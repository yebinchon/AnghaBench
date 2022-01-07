
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int EIO ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int lpfc_issue_els_rscn (struct lpfc_vport*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static ssize_t
lpfc_force_rscn_store(struct device *dev, struct device_attribute *attr,
        const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *)shost->hostdata;
 int i;

 i = lpfc_issue_els_rscn(vport, 0);
 if (i)
  return -EIO;
 return strlen(buf);
}
