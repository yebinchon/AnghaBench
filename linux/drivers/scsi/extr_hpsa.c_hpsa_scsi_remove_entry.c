
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsa_scsi_dev_t {int dummy; } ;
struct ctlr_info {int ndevices; struct hpsa_scsi_dev_t** dev; } ;


 int BUG_ON (int) ;
 int HPSA_MAX_DEVICES ;
 int KERN_INFO ;
 int hpsa_show_dev_msg (int ,struct ctlr_info*,struct hpsa_scsi_dev_t*,char*) ;

__attribute__((used)) static void hpsa_scsi_remove_entry(struct ctlr_info *h, int entry,
 struct hpsa_scsi_dev_t *removed[], int *nremoved)
{

 int i;
 struct hpsa_scsi_dev_t *sd;

 BUG_ON(entry < 0 || entry >= HPSA_MAX_DEVICES);

 sd = h->dev[entry];
 removed[*nremoved] = h->dev[entry];
 (*nremoved)++;

 for (i = entry; i < h->ndevices-1; i++)
  h->dev[i] = h->dev[i+1];
 h->ndevices--;
 hpsa_show_dev_msg(KERN_INFO, h, sd, "removed");
}
