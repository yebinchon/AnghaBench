
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
typedef int ssize_t ;
struct TYPE_2__ {unsigned int supported_mode; } ;


 unsigned int MODE_INITIATOR ;
 unsigned int MODE_UNKNOWN ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int show_shost_mode (unsigned int,char*) ;

__attribute__((used)) static ssize_t
show_shost_supported_mode(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct Scsi_Host *shost = class_to_shost(dev);
 unsigned int supported_mode = shost->hostt->supported_mode;

 if (supported_mode == MODE_UNKNOWN)

  supported_mode = MODE_INITIATOR;

 return show_shost_mode(supported_mode, buf);
}
