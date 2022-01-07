
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 scalar_t__ lpfc_get_hba_info (struct lpfc_hba*,int *,int *,int *,int *,int *,int *) ;
 int scnprintf (char*,int ,char*,...) ;

__attribute__((used)) static ssize_t
lpfc_max_vpi_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 uint32_t cnt;

 if (lpfc_get_hba_info(phba, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &cnt, ((void*)0)))
  return scnprintf(buf, PAGE_SIZE, "%d\n", cnt);
 return scnprintf(buf, PAGE_SIZE, "Unknown\n");
}
