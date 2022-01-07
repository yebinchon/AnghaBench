
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct srp_direct_buf {int len; } ;
struct scatterlist {int dummy; } ;
struct iu_entry {TYPE_2__* target; } ;
struct TYPE_3__ {int data_length; int t_data_nents; struct scatterlist* t_data_sg; } ;
struct ibmvscsis_cmd {TYPE_1__ se_cmd; struct iu_entry* iue; } ;
typedef int (* srp_rdma_t ) (struct ibmvscsis_cmd*,struct scatterlist*,int,struct srp_direct_buf*,int,int,int) ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int be32_to_cpu (int ) ;
 int dma_map_sg (int ,struct scatterlist*,int ,int ) ;
 int dma_unmap_sg (int ,struct scatterlist*,int,int ) ;
 int min (int ,int) ;
 int pr_err (char*,struct iu_entry*,int ) ;

__attribute__((used)) static int srp_direct_data(struct ibmvscsis_cmd *cmd, struct srp_direct_buf *md,
      enum dma_data_direction dir, srp_rdma_t rdma_io,
      int dma_map, int ext_desc)
{
 struct iu_entry *iue = ((void*)0);
 struct scatterlist *sg = ((void*)0);
 int err, nsg = 0, len;

 if (dma_map) {
  iue = cmd->iue;
  sg = cmd->se_cmd.t_data_sg;
  nsg = dma_map_sg(iue->target->dev, sg, cmd->se_cmd.t_data_nents,
     DMA_BIDIRECTIONAL);
  if (!nsg) {
   pr_err("fail to map %p %d\n", iue,
          cmd->se_cmd.t_data_nents);
   return 0;
  }
  len = min(cmd->se_cmd.data_length, be32_to_cpu(md->len));
 } else {
  len = be32_to_cpu(md->len);
 }

 err = rdma_io(cmd, sg, nsg, md, 1, dir, len);

 if (dma_map)
  dma_unmap_sg(iue->target->dev, sg, nsg, DMA_BIDIRECTIONAL);

 return err;
}
