
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int inquiry; } ;
struct clariion_dh_data {int flags; } ;


 int CLARIION_NAME ;
 int CLARIION_SHORT_TRESPASS ;
 int KERN_INFO ;
 int SCSI_DH_DEV_UNSUPP ;
 int SCSI_DH_OK ;
 char* parse_sp_model (struct scsi_device*,int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,char*,int ) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int clariion_std_inquiry(struct scsi_device *sdev,
    struct clariion_dh_data *csdev)
{
 int err = SCSI_DH_OK;
 char *sp_model;

 sp_model = parse_sp_model(sdev, sdev->inquiry);
 if (!sp_model) {
  err = SCSI_DH_DEV_UNSUPP;
  goto out;
 }




 if (!strlen(sp_model) || !strncmp(sp_model, "FC",2))
  csdev->flags |= CLARIION_SHORT_TRESPASS;

 sdev_printk(KERN_INFO, sdev,
      "%s: detected Clariion %s, flags %x\n",
      CLARIION_NAME, sp_model, csdev->flags);
out:
 return err;
}
