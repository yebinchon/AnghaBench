
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef long ulong ;
struct srp_target {struct scsi_info* ldata; } ;
struct srp_direct_buf {int len; int va; } ;
struct TYPE_4__ {TYPE_1__* window; } ;
struct scsi_info {int flags; int dev; int intr_lock; TYPE_2__ dds; } ;
struct scatterlist {int dummy; } ;
struct iu_entry {struct srp_target* target; } ;
struct ibmvscsis_cmd {struct iu_entry* iue; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef long dma_addr_t ;
struct TYPE_3__ {int liobn; } ;


 int CLIENT_FAILED ;
 int DMA_TO_DEVICE ;
 long EIO ;




 size_t LOCAL ;
 size_t REMOTE ;
 int RESPONSE_Q_DOWN ;
 long be32_to_cpu (int ) ;
 long be64_to_cpu (int ) ;
 int connection_broken (struct scsi_info*) ;
 int dev_err (int *,char*,...) ;
 int dma_wmb () ;
 long h_copy_rdma (long,int ,long,int ,long) ;
 int isync () ;
 long max_vdma_size ;
 long sg_dma_address (struct scatterlist*) ;
 long sg_dma_len (struct scatterlist*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ibmvscsis_rdma(struct ibmvscsis_cmd *cmd, struct scatterlist *sg,
     int nsg, struct srp_direct_buf *md, int nmd,
     enum dma_data_direction dir, unsigned int bytes)
{
 struct iu_entry *iue = cmd->iue;
 struct srp_target *target = iue->target;
 struct scsi_info *vscsi = target->ldata;
 struct scatterlist *sgp;
 dma_addr_t client_ioba, server_ioba;
 ulong buf_len;
 ulong client_len, server_len;
 int md_idx;
 long tx_len;
 long rc = 0;

 if (bytes == 0)
  return 0;

 sgp = sg;
 client_len = 0;
 server_len = 0;
 md_idx = 0;
 tx_len = bytes;

 do {
  if (client_len == 0) {
   if (md_idx >= nmd) {
    dev_err(&vscsi->dev, "rdma: ran out of client memory descriptors\n");
    rc = -EIO;
    break;
   }
   client_ioba = be64_to_cpu(md[md_idx].va);
   client_len = be32_to_cpu(md[md_idx].len);
  }
  if (server_len == 0) {
   if (!sgp) {
    dev_err(&vscsi->dev, "rdma: ran out of scatter/gather list\n");
    rc = -EIO;
    break;
   }
   server_ioba = sg_dma_address(sgp);
   server_len = sg_dma_len(sgp);
  }

  buf_len = tx_len;

  if (buf_len > client_len)
   buf_len = client_len;

  if (buf_len > server_len)
   buf_len = server_len;

  if (buf_len > max_vdma_size)
   buf_len = max_vdma_size;

  if (dir == DMA_TO_DEVICE) {

   rc = h_copy_rdma(buf_len,
      vscsi->dds.window[REMOTE].liobn,
      client_ioba,
      vscsi->dds.window[LOCAL].liobn,
      server_ioba);
  } else {





   isync();

   dma_wmb();
   rc = h_copy_rdma(buf_len,
      vscsi->dds.window[LOCAL].liobn,
      server_ioba,
      vscsi->dds.window[REMOTE].liobn,
      client_ioba);
  }
  switch (rc) {
  case 128:
   break;
  case 130:
  case 129:
  case 131:
   if (connection_broken(vscsi)) {
    spin_lock_bh(&vscsi->intr_lock);
    vscsi->flags |=
     (RESPONSE_Q_DOWN | CLIENT_FAILED);
    spin_unlock_bh(&vscsi->intr_lock);
   }
   dev_err(&vscsi->dev, "rdma: h_copy_rdma failed, rc %ld\n",
    rc);
   break;

  default:
   dev_err(&vscsi->dev, "rdma: unknown error %ld from h_copy_rdma\n",
    rc);
   break;
  }

  if (!rc) {
   tx_len -= buf_len;
   if (tx_len) {
    client_len -= buf_len;
    if (client_len == 0)
     md_idx++;
    else
     client_ioba += buf_len;

    server_len -= buf_len;
    if (server_len == 0)
     sgp = sg_next(sgp);
    else
     server_ioba += buf_len;
   } else {
    break;
   }
  }
 } while (!rc);

 return rc;
}
