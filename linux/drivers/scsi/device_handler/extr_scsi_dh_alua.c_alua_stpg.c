
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_device {int dummy; } ;
struct alua_port_group {int tpgs; int state; int flags; int group_id; int pref; } ;


 int ALUA_DH_NAME ;
 int ALUA_OPTIMIZE_STPG ;
 scalar_t__ DRIVER_ERROR ;
 int KERN_INFO ;






 int SCSI_DH_DEV_TEMP_BUSY ;
 int SCSI_DH_IO ;
 int SCSI_DH_NOSYS ;
 int SCSI_DH_OK ;
 int SCSI_DH_RETRY ;
 int TPGS_MODE_EXPLICIT ;
 int TPGS_MODE_IMPLICIT ;
 scalar_t__ driver_byte (int) ;
 int scsi_print_sense_hdr (struct scsi_device*,int ,struct scsi_sense_hdr*) ;
 int scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,...) ;
 int submit_stpg (struct scsi_device*,int ,struct scsi_sense_hdr*) ;

__attribute__((used)) static unsigned alua_stpg(struct scsi_device *sdev, struct alua_port_group *pg)
{
 int retval;
 struct scsi_sense_hdr sense_hdr;

 if (!(pg->tpgs & TPGS_MODE_EXPLICIT)) {

  return SCSI_DH_RETRY;
 }
 switch (pg->state) {
 case 131:
  return SCSI_DH_OK;
 case 133:
  if ((pg->flags & ALUA_OPTIMIZE_STPG) &&
      !pg->pref &&
      (pg->tpgs & TPGS_MODE_IMPLICIT))
   return SCSI_DH_OK;
  break;
 case 130:
 case 128:
  break;
 case 132:
  return SCSI_DH_IO;
 case 129:
  break;
 default:
  sdev_printk(KERN_INFO, sdev,
       "%s: stpg failed, unhandled TPGS state %d",
       ALUA_DH_NAME, pg->state);
  return SCSI_DH_NOSYS;
 }
 retval = submit_stpg(sdev, pg->group_id, &sense_hdr);

 if (retval) {
  if (!scsi_sense_valid(&sense_hdr)) {
   sdev_printk(KERN_INFO, sdev,
        "%s: stpg failed, result %d",
        ALUA_DH_NAME, retval);
   if (driver_byte(retval) == DRIVER_ERROR)
    return SCSI_DH_DEV_TEMP_BUSY;
  } else {
   sdev_printk(KERN_INFO, sdev, "%s: stpg failed\n",
        ALUA_DH_NAME);
   scsi_print_sense_hdr(sdev, ALUA_DH_NAME, &sense_hdr);
  }
 }

 return SCSI_DH_RETRY;
}
