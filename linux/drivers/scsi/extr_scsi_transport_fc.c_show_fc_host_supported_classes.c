
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ FC_COS_UNSPECIFIED ;
 scalar_t__ fc_host_supported_classes (struct Scsi_Host*) ;
 int get_fc_cos_names (scalar_t__,char*) ;
 int snprintf (char*,int,char*) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t
show_fc_host_supported_classes (struct device *dev,
           struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = transport_class_to_shost(dev);

 if (fc_host_supported_classes(shost) == FC_COS_UNSPECIFIED)
  return snprintf(buf, 20, "unspecified\n");

 return get_fc_cos_names(fc_host_supported_classes(shost), buf);
}
