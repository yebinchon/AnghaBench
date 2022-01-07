
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int target; int lun; } ;
struct ctlr_info {struct hpsa_scsi_dev_t** dev; } ;


 int BUG_ON (int) ;
 int HPSA_MAX_DEVICES ;
 int KERN_INFO ;
 int hpsa_show_dev_msg (int ,struct ctlr_info*,struct hpsa_scsi_dev_t*,char*) ;

__attribute__((used)) static void hpsa_scsi_replace_entry(struct ctlr_info *h,
 int entry, struct hpsa_scsi_dev_t *new_entry,
 struct hpsa_scsi_dev_t *added[], int *nadded,
 struct hpsa_scsi_dev_t *removed[], int *nremoved)
{

 BUG_ON(entry < 0 || entry >= HPSA_MAX_DEVICES);
 removed[*nremoved] = h->dev[entry];
 (*nremoved)++;





 if (new_entry->target == -1) {
  new_entry->target = h->dev[entry]->target;
  new_entry->lun = h->dev[entry]->lun;
 }

 h->dev[entry] = new_entry;
 added[*nadded] = new_entry;
 (*nadded)++;

 hpsa_show_dev_msg(KERN_INFO, h, new_entry, "replaced");
}
