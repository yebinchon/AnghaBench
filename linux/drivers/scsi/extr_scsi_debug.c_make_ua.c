
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_dev_info {int uas_bm; } ;
struct scsi_cmnd {int device; } ;


 int BUS_RESET_ASCQ ;
 int CAPACITY_CHANGED_ASCQ ;
 int KERN_INFO ;
 int LUNS_CHANGED_ASCQ ;
 int MICROCODE_CHANGED_ASCQ ;
 int MICROCODE_CHANGED_WO_RESET_ASCQ ;
 int MODE_CHANGED_ASCQ ;
 int POWER_ON_RESET_ASCQ ;
 int SDEBUG_NUM_UAS ;







 int TARGET_CHANGED_ASC ;
 int UA_CHANGED_ASC ;
 int UA_RESET_ASC ;
 int UNIT_ATTENTION ;
 int check_condition_result ;
 int clear_bit (int,int ) ;
 int clear_luns_changed_on_target (struct sdebug_dev_info*) ;
 int find_first_bit (int ,int) ;
 int mk_sense_buffer (struct scsi_cmnd*,int ,int ,int ) ;
 int my_name ;
 int pr_warn (char*,int) ;
 int sdebug_scsi_level ;
 scalar_t__ sdebug_verbose ;
 int sdev_printk (int ,int ,char*,int ,char const*) ;

__attribute__((used)) static int make_ua(struct scsi_cmnd *scp, struct sdebug_dev_info *devip)
{
 int k;

 k = find_first_bit(devip->uas_bm, SDEBUG_NUM_UAS);
 if (k != SDEBUG_NUM_UAS) {
  const char *cp = ((void*)0);

  switch (k) {
  case 128:
   mk_sense_buffer(scp, UNIT_ATTENTION, UA_RESET_ASC,
     POWER_ON_RESET_ASCQ);
   if (sdebug_verbose)
    cp = "power on reset";
   break;
  case 134:
   mk_sense_buffer(scp, UNIT_ATTENTION, UA_RESET_ASC,
     BUS_RESET_ASCQ);
   if (sdebug_verbose)
    cp = "bus reset";
   break;
  case 129:
   mk_sense_buffer(scp, UNIT_ATTENTION, UA_CHANGED_ASC,
     MODE_CHANGED_ASCQ);
   if (sdebug_verbose)
    cp = "mode parameters changed";
   break;
  case 133:
   mk_sense_buffer(scp, UNIT_ATTENTION, UA_CHANGED_ASC,
     CAPACITY_CHANGED_ASCQ);
   if (sdebug_verbose)
    cp = "capacity data changed";
   break;
  case 131:
   mk_sense_buffer(scp, UNIT_ATTENTION,
     TARGET_CHANGED_ASC,
     MICROCODE_CHANGED_ASCQ);
   if (sdebug_verbose)
    cp = "microcode has been changed";
   break;
  case 130:
   mk_sense_buffer(scp, UNIT_ATTENTION,
     TARGET_CHANGED_ASC,
     MICROCODE_CHANGED_WO_RESET_ASCQ);
   if (sdebug_verbose)
    cp = "microcode has been changed without reset";
   break;
  case 132:
   if (sdebug_scsi_level >= 6)
    clear_luns_changed_on_target(devip);
   mk_sense_buffer(scp, UNIT_ATTENTION,
     TARGET_CHANGED_ASC,
     LUNS_CHANGED_ASCQ);
   if (sdebug_verbose)
    cp = "reported luns data has changed";
   break;
  default:
   pr_warn("unexpected unit attention code=%d\n", k);
   if (sdebug_verbose)
    cp = "unknown";
   break;
  }
  clear_bit(k, devip->uas_bm);
  if (sdebug_verbose)
   sdev_printk(KERN_INFO, scp->device,
       "%s reports: Unit attention: %s\n",
       my_name, cp);
  return check_condition_result;
 }
 return 0;
}
