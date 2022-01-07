
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_cable {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct typec_cable*) ;
 struct typec_cable* to_typec_cable (struct device*) ;

__attribute__((used)) static void typec_cable_release(struct device *dev)
{
 struct typec_cable *cable = to_typec_cable(dev);

 kfree(cable);
}
