
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef int ssize_t ;


 int fc_host_supported_fc4s (struct Scsi_Host*) ;
 int show_fc_fc4s (char*,int ) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t
show_fc_host_supported_fc4s (struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = transport_class_to_shost(dev);
 return (ssize_t)show_fc_fc4s(buf, fc_host_supported_fc4s(shost));
}
