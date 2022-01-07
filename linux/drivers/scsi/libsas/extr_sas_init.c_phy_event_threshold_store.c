
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_ha_struct {int event_thres; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef size_t ssize_t ;


 struct sas_ha_struct* SHOST_TO_SAS_HA (struct Scsi_Host*) ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int simple_strtol (char const*,int *,int) ;

__attribute__((used)) static inline ssize_t phy_event_threshold_store(struct device *dev,
   struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 struct sas_ha_struct *sha = SHOST_TO_SAS_HA(shost);

 sha->event_thres = simple_strtol(buf, ((void*)0), 10);


 if (sha->event_thres < 32)
  sha->event_thres = 32;

 return count;
}
