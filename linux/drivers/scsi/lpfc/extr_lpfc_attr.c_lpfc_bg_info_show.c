
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int sli3_options; scalar_t__ cfg_enable_bg; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int LPFC_SLI3_BG_ENABLED ;
 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t
lpfc_bg_info_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;

 if (phba->cfg_enable_bg) {
  if (phba->sli3_options & LPFC_SLI3_BG_ENABLED)
   return scnprintf(buf, PAGE_SIZE,
     "BlockGuard Enabled\n");
  else
   return scnprintf(buf, PAGE_SIZE,
     "BlockGuard Not Supported\n");
 } else
  return scnprintf(buf, PAGE_SIZE,
     "BlockGuard Disabled\n");
}
