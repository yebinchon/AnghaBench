
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_direct_buf {scalar_t__ key; int len; int va; } ;
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;
struct ibmvfc_host {scalar_t__ log_level; int sg_pool; } ;
struct ibmvfc_event {int ext_list_token; struct srp_direct_buf* ext_list; } ;
struct TYPE_2__ {int add_cdb_len; } ;
struct ibmvfc_cmd {int flags; TYPE_1__ iu; struct srp_direct_buf ioba; } ;
struct device {int dummy; } ;


 scalar_t__ DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int IBMVFC_CLASS_3_ERR ;
 scalar_t__ IBMVFC_DEFAULT_LOG_LEVEL ;
 int IBMVFC_NO_MEM_DESC ;
 int IBMVFC_RDDATA ;
 int IBMVFC_READ ;
 int IBMVFC_SCATTERLIST ;
 int IBMVFC_WRDATA ;
 int IBMVFC_WRITE ;
 int KERN_ERR ;
 scalar_t__ cls3_error ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 struct ibmvfc_host* dev_get_drvdata (struct device*) ;
 struct srp_direct_buf* dma_pool_alloc (int ,int ,int *) ;
 int ibmvfc_map_sg_list (struct scsi_cmnd*,int,struct srp_direct_buf*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 int scsi_dma_map (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ibmvfc_map_sg_data(struct scsi_cmnd *scmd,
         struct ibmvfc_event *evt,
         struct ibmvfc_cmd *vfc_cmd, struct device *dev)
{

 int sg_mapped;
 struct srp_direct_buf *data = &vfc_cmd->ioba;
 struct ibmvfc_host *vhost = dev_get_drvdata(dev);

 if (cls3_error)
  vfc_cmd->flags |= cpu_to_be16(IBMVFC_CLASS_3_ERR);

 sg_mapped = scsi_dma_map(scmd);
 if (!sg_mapped) {
  vfc_cmd->flags |= cpu_to_be16(IBMVFC_NO_MEM_DESC);
  return 0;
 } else if (unlikely(sg_mapped < 0)) {
  if (vhost->log_level > IBMVFC_DEFAULT_LOG_LEVEL)
   scmd_printk(KERN_ERR, scmd, "Failed to map DMA buffer for command\n");
  return sg_mapped;
 }

 if (scmd->sc_data_direction == DMA_TO_DEVICE) {
  vfc_cmd->flags |= cpu_to_be16(IBMVFC_WRITE);
  vfc_cmd->iu.add_cdb_len |= IBMVFC_WRDATA;
 } else {
  vfc_cmd->flags |= cpu_to_be16(IBMVFC_READ);
  vfc_cmd->iu.add_cdb_len |= IBMVFC_RDDATA;
 }

 if (sg_mapped == 1) {
  ibmvfc_map_sg_list(scmd, sg_mapped, data);
  return 0;
 }

 vfc_cmd->flags |= cpu_to_be16(IBMVFC_SCATTERLIST);

 if (!evt->ext_list) {
  evt->ext_list = dma_pool_alloc(vhost->sg_pool, GFP_ATOMIC,
            &evt->ext_list_token);

  if (!evt->ext_list) {
   scsi_dma_unmap(scmd);
   if (vhost->log_level > IBMVFC_DEFAULT_LOG_LEVEL)
    scmd_printk(KERN_ERR, scmd, "Can't allocate memory for scatterlist\n");
   return -ENOMEM;
  }
 }

 ibmvfc_map_sg_list(scmd, sg_mapped, evt->ext_list);

 data->va = cpu_to_be64(evt->ext_list_token);
 data->len = cpu_to_be32(sg_mapped * sizeof(struct srp_direct_buf));
 data->key = 0;
 return 0;
}
