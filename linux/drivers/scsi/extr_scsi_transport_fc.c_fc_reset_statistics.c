
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fc_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int transportt; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* reset_fc_host_stats ) (struct Scsi_Host*) ;} ;


 size_t ENOENT ;
 int stub1 (struct Scsi_Host*) ;
 struct fc_internal* to_fc_internal (int ) ;
 struct Scsi_Host* transport_class_to_shost (struct device*) ;

__attribute__((used)) static ssize_t
fc_reset_statistics(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct Scsi_Host *shost = transport_class_to_shost(dev);
 struct fc_internal *i = to_fc_internal(shost->transportt);


 if (i->f->reset_fc_host_stats) {
  i->f->reset_fc_host_stats(shost);
  return count;
 }

 return -ENOENT;
}
