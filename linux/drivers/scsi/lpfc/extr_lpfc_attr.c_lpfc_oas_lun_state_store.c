
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int cfg_oas_lun_state; int cfg_fof; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EPERM ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int isdigit (char const) ;
 int sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
lpfc_oas_lun_state_store(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_hba *phba = ((struct lpfc_vport *)shost->hostdata)->phba;
 int val = 0;

 if (!phba->cfg_fof)
  return -EPERM;

 if (!isdigit(buf[0]))
  return -EINVAL;

 if (sscanf(buf, "%i", &val) != 1)
  return -EINVAL;

 if ((val != 0) && (val != 1))
  return -EINVAL;

 phba->cfg_oas_lun_state = val;
 return strlen(buf);
}
