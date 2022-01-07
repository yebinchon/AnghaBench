
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_hba {int intr_coal_ticks; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,int ) ;
 struct hisi_hba* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static ssize_t intr_coal_ticks_v3_hw_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct hisi_hba *hisi_hba = shost_priv(shost);

 return scnprintf(buf, PAGE_SIZE, "%u\n",
    hisi_hba->intr_coal_ticks);
}
