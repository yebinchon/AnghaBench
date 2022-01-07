
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {struct fake_driver* driver_priv; } ;
struct fake_driver {int int_statid; int int_level; } ;


 int vme_irq_handler (struct vme_bridge*,int ,int ) ;

__attribute__((used)) static void fake_VIRQ_tasklet(unsigned long data)
{
 struct vme_bridge *fake_bridge;
 struct fake_driver *bridge;

 fake_bridge = (struct vme_bridge *) data;
 bridge = fake_bridge->driver_priv;

 vme_irq_handler(fake_bridge, bridge->int_level, bridge->int_statid);
}
