
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
struct TYPE_2__ {int (* get_host_active_fc4s ) (struct Scsi_Host*) ;} ;


 int fc_host_active_fc4s (struct Scsi_Host*) ;
 int show_fc_fc4s (char*,int ) ;
 int stub1 (struct Scsi_Host*) ;
 struct fc_internal* to_fc_internal (int ) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t
show_fc_host_active_fc4s (struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct Scsi_Host *shost = transport_class_to_shost(dev);
 struct fc_internal *i = to_fc_internal(shost->transportt);

 if (i->f->get_host_active_fc4s)
  i->f->get_host_active_fc4s(shost);

 return (ssize_t)show_fc_fc4s(buf, fc_host_active_fc4s(shost));
}
