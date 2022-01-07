
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {scalar_t__ fc_unmap_cnt; scalar_t__ fc_map_cnt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int scnprintf (char*,int ,char*,scalar_t__) ;

__attribute__((used)) static ssize_t
lpfc_num_discovered_ports_show(struct device *dev,
          struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;

 return scnprintf(buf, PAGE_SIZE, "%d\n",
   vport->fc_map_cnt + vport->fc_unmap_cnt);
}
