
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int CLARIION_NAME ;
 int KERN_WARNING ;
 char* emc_default_str ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,unsigned char) ;
 int strncmp (unsigned char*,char*,int) ;

__attribute__((used)) static char * parse_sp_model(struct scsi_device *sdev, unsigned char *buffer)
{
 unsigned char len = buffer[4] + 5;
 char *sp_model = ((void*)0);
 unsigned char sp_len, serial_len;

 if (len < 160) {
  sdev_printk(KERN_WARNING, sdev,
       "%s: Invalid information section length %d\n",
       CLARIION_NAME, len);

  if (!strncmp(buffer + 8, "DGC", 3)) {

   sp_model = emc_default_str;
  }
  goto out;
 }




 serial_len = buffer[160];
 if (serial_len == 0 || serial_len + 161 > len) {
  sdev_printk(KERN_WARNING, sdev,
       "%s: Invalid array serial number length %d\n",
       CLARIION_NAME, serial_len);
  goto out;
 }
 sp_len = buffer[99];
 if (sp_len == 0 || serial_len + sp_len + 161 > len) {
  sdev_printk(KERN_WARNING, sdev,
       "%s: Invalid model number length %d\n",
       CLARIION_NAME, sp_len);
  goto out;
 }
 sp_model = &buffer[serial_len + 161];

 while (sp_len > 1 && sp_model[sp_len - 1] == ' ')
  sp_len--;

 sp_model[sp_len] = '\0';

out:
 return sp_model;
}
