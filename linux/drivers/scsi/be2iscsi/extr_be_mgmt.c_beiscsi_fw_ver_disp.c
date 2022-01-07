
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct beiscsi_hba {char* fw_ver_str; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,char*) ;

ssize_t
beiscsi_fw_ver_disp(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct beiscsi_hba *phba = iscsi_host_priv(shost);

 return snprintf(buf, PAGE_SIZE, "%s\n", phba->fw_ver_str);
}
