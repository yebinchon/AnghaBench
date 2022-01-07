
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct srp_rport {int dummy; } ;
struct srp_internal {TYPE_1__* f; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int transportt; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int (* rport_delete ) (struct srp_rport*) ;} ;


 size_t ENOSYS ;
 struct Scsi_Host* dev_to_shost (struct device*) ;
 int stub1 (struct srp_rport*) ;
 struct srp_internal* to_srp_internal (int ) ;
 struct srp_rport* transport_class_to_srp_rport (struct device*) ;

__attribute__((used)) static ssize_t store_srp_rport_delete(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct srp_rport *rport = transport_class_to_srp_rport(dev);
 struct Scsi_Host *shost = dev_to_shost(dev);
 struct srp_internal *i = to_srp_internal(shost->transportt);

 if (i->f->rport_delete) {
  i->f->rport_delete(rport);
  return count;
 } else {
  return -ENOSYS;
 }
}
