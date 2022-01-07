
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct powercap_zone {int allocated; TYPE_1__* ops; int lock; int idr; struct powercap_zone* constraints; struct powercap_zone* zone_dev_attrs; struct powercap_zone* name; int id; int parent_idr; } ;
struct powercap_control_type {int allocated; TYPE_1__* ops; int lock; int idr; struct powercap_control_type* constraints; struct powercap_control_type* zone_dev_attrs; struct powercap_control_type* name; int id; int parent_idr; } ;
struct device {scalar_t__ parent; } ;
struct TYPE_2__ {int (* release ) (struct powercap_zone*) ;} ;


 int idr_destroy (int *) ;
 int idr_remove (int ,int ) ;
 int kfree (struct powercap_zone*) ;
 int mutex_destroy (int *) ;
 int stub1 (struct powercap_zone*) ;
 int stub2 (struct powercap_zone*) ;
 struct powercap_zone* to_powercap_control_type (struct device*) ;
 struct powercap_zone* to_powercap_zone (struct device*) ;

__attribute__((used)) static void powercap_release(struct device *dev)
{
 bool allocated;

 if (dev->parent) {
  struct powercap_zone *power_zone = to_powercap_zone(dev);


  allocated = power_zone->allocated;

  idr_remove(power_zone->parent_idr, power_zone->id);

  idr_destroy(&power_zone->idr);
  kfree(power_zone->name);
  kfree(power_zone->zone_dev_attrs);
  kfree(power_zone->constraints);
  if (power_zone->ops->release)
   power_zone->ops->release(power_zone);
  if (allocated)
   kfree(power_zone);
 } else {
  struct powercap_control_type *control_type =
      to_powercap_control_type(dev);


  allocated = control_type->allocated;
  idr_destroy(&control_type->idr);
  mutex_destroy(&control_type->lock);
  if (control_type->ops && control_type->ops->release)
   control_type->ops->release(control_type);
  if (allocated)
   kfree(control_type);
 }
}
