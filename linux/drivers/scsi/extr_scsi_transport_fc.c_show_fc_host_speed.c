
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int transportt; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* get_host_speed ) (struct Scsi_Host*) ;} ;


 scalar_t__ FC_PORTSPEED_UNKNOWN ;
 scalar_t__ fc_host_speed (struct Scsi_Host*) ;
 int get_fc_port_speed_names (scalar_t__,char*) ;
 int snprintf (char*,int,char*) ;
 int stub1 (struct Scsi_Host*) ;
 struct fc_internal* to_fc_internal (int ) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t
show_fc_host_speed (struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = transport_class_to_shost(dev);
 struct fc_internal *i = to_fc_internal(shost->transportt);

 if (i->f->get_host_speed)
  i->f->get_host_speed(shost);

 if (fc_host_speed(shost) == FC_PORTSPEED_UNKNOWN)
  return snprintf(buf, 20, "unknown\n");

 return get_fc_port_speed_names(fc_host_speed(shost), buf);
}
