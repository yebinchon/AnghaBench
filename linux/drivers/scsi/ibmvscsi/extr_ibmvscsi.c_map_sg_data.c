
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {void* len; scalar_t__ va; scalar_t__ key; } ;
struct srp_indirect_buf {struct srp_direct_buf* desc_list; TYPE_1__ table_desc; void* len; } ;
struct srp_event_struct {struct srp_direct_buf* ext_list; int ext_list_token; } ;
struct srp_direct_buf {int dummy; } ;
struct srp_cmd {scalar_t__ add_data; } ;
struct scsi_cmnd {int device; } ;
struct device {int dummy; } ;


 int FW_FEATURE_CMO ;
 int KERN_ERR ;
 int MAX_INDIRECT_BUFS ;
 int SG_ALL ;
 void* cpu_to_be32 (int) ;
 scalar_t__ cpu_to_be64 (int ) ;
 scalar_t__ dma_alloc_coherent (struct device*,int,int *,int ) ;
 int firmware_has_feature (int ) ;
 int map_sg_list (struct scsi_cmnd*,int,struct srp_direct_buf*) ;
 int memcpy (struct srp_direct_buf*,struct srp_direct_buf*,int) ;
 int scsi_dma_map (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int sdev_printk (int ,int ,char*) ;
 int set_srp_direction (struct scsi_cmnd*,struct srp_cmd*,int) ;

__attribute__((used)) static int map_sg_data(struct scsi_cmnd *cmd,
         struct srp_event_struct *evt_struct,
         struct srp_cmd *srp_cmd, struct device *dev)
{

 int sg_mapped;
 u64 total_length = 0;
 struct srp_direct_buf *data =
  (struct srp_direct_buf *) srp_cmd->add_data;
 struct srp_indirect_buf *indirect =
  (struct srp_indirect_buf *) data;

 sg_mapped = scsi_dma_map(cmd);
 if (!sg_mapped)
  return 1;
 else if (sg_mapped < 0)
  return 0;

 set_srp_direction(cmd, srp_cmd, sg_mapped);


 if (sg_mapped == 1) {
  map_sg_list(cmd, sg_mapped, data);
  return 1;
 }

 indirect->table_desc.va = 0;
 indirect->table_desc.len = cpu_to_be32(sg_mapped *
            sizeof(struct srp_direct_buf));
 indirect->table_desc.key = 0;

 if (sg_mapped <= MAX_INDIRECT_BUFS) {
  total_length = map_sg_list(cmd, sg_mapped,
        &indirect->desc_list[0]);
  indirect->len = cpu_to_be32(total_length);
  return 1;
 }


 if (!evt_struct->ext_list) {
  evt_struct->ext_list = (struct srp_direct_buf *)
   dma_alloc_coherent(dev,
        SG_ALL * sizeof(struct srp_direct_buf),
        &evt_struct->ext_list_token, 0);
  if (!evt_struct->ext_list) {
   if (!firmware_has_feature(FW_FEATURE_CMO))
    sdev_printk(KERN_ERR, cmd->device,
                "Can't allocate memory "
                "for indirect table\n");
   scsi_dma_unmap(cmd);
   return 0;
  }
 }

 total_length = map_sg_list(cmd, sg_mapped, evt_struct->ext_list);

 indirect->len = cpu_to_be32(total_length);
 indirect->table_desc.va = cpu_to_be64(evt_struct->ext_list_token);
 indirect->table_desc.len = cpu_to_be32(sg_mapped *
            sizeof(indirect->desc_list[0]));
 memcpy(indirect->desc_list, evt_struct->ext_list,
        MAX_INDIRECT_BUFS * sizeof(struct srp_direct_buf));
  return 1;
}
