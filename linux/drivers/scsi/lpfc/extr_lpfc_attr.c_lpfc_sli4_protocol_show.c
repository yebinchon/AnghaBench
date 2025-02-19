
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_3__ {scalar_t__ lnk_dv; scalar_t__ lnk_tp; } ;
struct TYPE_4__ {TYPE_1__ lnk_info; } ;
struct lpfc_hba {scalar_t__ sli_rev; TYPE_2__ sli4_hba; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 scalar_t__ LPFC_LNK_DAT_VAL ;
 scalar_t__ LPFC_LNK_TYPE_FC ;
 scalar_t__ LPFC_LNK_TYPE_GE ;
 scalar_t__ LPFC_SLI_REV4 ;
 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t
lpfc_sli4_protocol_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;

 if (phba->sli_rev < LPFC_SLI_REV4)
  return scnprintf(buf, PAGE_SIZE, "fc\n");

 if (phba->sli4_hba.lnk_info.lnk_dv == LPFC_LNK_DAT_VAL) {
  if (phba->sli4_hba.lnk_info.lnk_tp == LPFC_LNK_TYPE_GE)
   return scnprintf(buf, PAGE_SIZE, "fcoe\n");
  if (phba->sli4_hba.lnk_info.lnk_tp == LPFC_LNK_TYPE_FC)
   return scnprintf(buf, PAGE_SIZE, "fc\n");
 }
 return scnprintf(buf, PAGE_SIZE, "unknown\n");
}
