
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpsa_scsi_dev_t {int lun; int* scsi3addr; scalar_t__ expose_device; int target; int bus; } ;
struct ctlr_info {int ndevices; struct hpsa_scsi_dev_t** dev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int HPSA_MAX_DEVICES ;
 int KERN_INFO ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 scalar_t__ hpsa_find_target_lun (struct ctlr_info*,int*,int ,int *,int*) ;
 int hpsa_show_dev_msg (int ,struct ctlr_info*,struct hpsa_scsi_dev_t*,char*) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,int*,int) ;

__attribute__((used)) static int hpsa_scsi_add_entry(struct ctlr_info *h,
  struct hpsa_scsi_dev_t *device,
  struct hpsa_scsi_dev_t *added[], int *nadded)
{

 int n = h->ndevices;
 int i;
 unsigned char addr1[8], addr2[8];
 struct hpsa_scsi_dev_t *sd;

 if (n >= HPSA_MAX_DEVICES) {
  dev_err(&h->pdev->dev, "too many devices, some will be "
   "inaccessible.\n");
  return -1;
 }


 if (device->lun != -1)

  goto lun_assigned;





 if (device->scsi3addr[4] == 0) {

  if (hpsa_find_target_lun(h, device->scsi3addr,
   device->bus, &device->target, &device->lun) != 0)
   return -1;
  goto lun_assigned;
 }







 memcpy(addr1, device->scsi3addr, 8);
 addr1[4] = 0;
 addr1[5] = 0;
 for (i = 0; i < n; i++) {
  sd = h->dev[i];
  memcpy(addr2, sd->scsi3addr, 8);
  addr2[4] = 0;
  addr2[5] = 0;

  if (memcmp(addr1, addr2, 8) == 0) {
   device->bus = sd->bus;
   device->target = sd->target;
   device->lun = device->scsi3addr[4];
   break;
  }
 }
 if (device->lun == -1) {
  dev_warn(&h->pdev->dev, "physical device with no LUN=0,"
   " suspect firmware bug or unsupported hardware "
   "configuration.\n");
  return -1;
 }

lun_assigned:

 h->dev[n] = device;
 h->ndevices++;
 added[*nadded] = device;
 (*nadded)++;
 hpsa_show_dev_msg(KERN_INFO, h, device,
  device->expose_device ? "added" : "masked");
 return 0;
}
