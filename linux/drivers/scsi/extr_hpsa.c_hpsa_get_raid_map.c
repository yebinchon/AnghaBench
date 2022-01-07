
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int structure_size; } ;
struct hpsa_scsi_dev_t {TYPE_2__ raid_map; } ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct ErrorInfo {scalar_t__ CommandStatus; } ;
struct CommandList {struct ErrorInfo* err_info; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ CMD_DATA_UNDERRUN ;
 int DMA_FROM_DEVICE ;
 int HPSA_GET_RAID_MAP ;
 int NO_TIMEOUT ;
 int TYPE_CMD ;
 struct CommandList* cmd_alloc (struct ctlr_info*) ;
 int cmd_free (struct ctlr_info*,struct CommandList*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ fill_cmd (struct CommandList*,int ,struct ctlr_info*,TYPE_2__*,int,int ,unsigned char*,int ) ;
 int hpsa_debug_map_buff (struct ctlr_info*,int,TYPE_2__*) ;
 int hpsa_scsi_do_simple_cmd_with_retry (struct ctlr_info*,struct CommandList*,int ,int ) ;
 int hpsa_scsi_interpret_error (struct ctlr_info*,struct CommandList*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hpsa_get_raid_map(struct ctlr_info *h,
 unsigned char *scsi3addr, struct hpsa_scsi_dev_t *this_device)
{
 int rc = 0;
 struct CommandList *c;
 struct ErrorInfo *ei;

 c = cmd_alloc(h);

 if (fill_cmd(c, HPSA_GET_RAID_MAP, h, &this_device->raid_map,
   sizeof(this_device->raid_map), 0,
   scsi3addr, TYPE_CMD)) {
  dev_warn(&h->pdev->dev, "hpsa_get_raid_map fill_cmd failed\n");
  cmd_free(h, c);
  return -1;
 }
 rc = hpsa_scsi_do_simple_cmd_with_retry(h, c, DMA_FROM_DEVICE,
   NO_TIMEOUT);
 if (rc)
  goto out;
 ei = c->err_info;
 if (ei->CommandStatus != 0 && ei->CommandStatus != CMD_DATA_UNDERRUN) {
  hpsa_scsi_interpret_error(h, c);
  rc = -1;
  goto out;
 }
 cmd_free(h, c);


 if (le32_to_cpu(this_device->raid_map.structure_size) >
    sizeof(this_device->raid_map)) {
  dev_warn(&h->pdev->dev, "RAID map size is too large!\n");
  rc = -1;
 }
 hpsa_debug_map_buff(h, rc, &this_device->raid_map);
 return rc;
out:
 cmd_free(h, c);
 return rc;
}
