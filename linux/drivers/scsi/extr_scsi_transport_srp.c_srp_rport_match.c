
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct attribute_container {int dummy; } ;
struct TYPE_6__ {struct attribute_container ac; } ;
struct srp_internal {TYPE_1__ rport_attr_cont; } ;
struct device {int parent; } ;
struct Scsi_Host {TYPE_4__* transportt; } ;
struct TYPE_10__ {int class; } ;
struct TYPE_7__ {int * class; } ;
struct TYPE_8__ {TYPE_2__ ac; } ;
struct TYPE_9__ {TYPE_3__ host_attrs; } ;


 struct Scsi_Host* dev_to_shost (int ) ;
 int scsi_is_srp_rport (struct device*) ;
 TYPE_5__ srp_host_class ;
 struct srp_internal* to_srp_internal (TYPE_4__*) ;

__attribute__((used)) static int srp_rport_match(struct attribute_container *cont,
      struct device *dev)
{
 struct Scsi_Host *shost;
 struct srp_internal *i;

 if (!scsi_is_srp_rport(dev))
  return 0;

 shost = dev_to_shost(dev->parent);
 if (!shost->transportt)
  return 0;
 if (shost->transportt->host_attrs.ac.class != &srp_host_class.class)
  return 0;

 i = to_srp_internal(shost->transportt);
 return &i->rport_attr_cont.ac == cont;
}
