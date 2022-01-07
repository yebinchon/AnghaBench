
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ type; } ;


 int ALUA_DH_NAME ;
 int KERN_INFO ;



 scalar_t__ TYPE_DISK ;
 int scsi_device_tpgs (struct scsi_device*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,...) ;

__attribute__((used)) static int alua_check_tpgs(struct scsi_device *sdev)
{
 int tpgs = 128;





 if (sdev->type != TYPE_DISK) {
  sdev_printk(KERN_INFO, sdev,
       "%s: disable for non-disk devices\n",
       ALUA_DH_NAME);
  return tpgs;
 }

 tpgs = scsi_device_tpgs(sdev);
 switch (tpgs) {
 case 130|129:
  sdev_printk(KERN_INFO, sdev,
       "%s: supports implicit and explicit TPGS\n",
       ALUA_DH_NAME);
  break;
 case 130:
  sdev_printk(KERN_INFO, sdev, "%s: supports explicit TPGS\n",
       ALUA_DH_NAME);
  break;
 case 129:
  sdev_printk(KERN_INFO, sdev, "%s: supports implicit TPGS\n",
       ALUA_DH_NAME);
  break;
 case 128:
  sdev_printk(KERN_INFO, sdev, "%s: not supported\n",
       ALUA_DH_NAME);
  break;
 default:
  sdev_printk(KERN_INFO, sdev,
       "%s: unsupported TPGS setting %d\n",
       ALUA_DH_NAME, tpgs);
  tpgs = 128;
  break;
 }

 return tpgs;
}
