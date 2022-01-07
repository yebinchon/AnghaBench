
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sas_internal {int dummy; } ;
struct domain_device {TYPE_4__* port; } ;
struct TYPE_8__ {TYPE_3__* ha; } ;
struct TYPE_6__ {TYPE_1__* shost; } ;
struct TYPE_7__ {TYPE_2__ core; } ;
struct TYPE_5__ {int transportt; } ;


 struct sas_internal* to_sas_internal (int ) ;

__attribute__((used)) static struct sas_internal *dev_to_sas_internal(struct domain_device *dev)
{
 return to_sas_internal(dev->port->ha->core.shost->transportt);
}
