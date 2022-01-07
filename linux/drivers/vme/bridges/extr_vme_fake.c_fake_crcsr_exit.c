
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vme_bridge {struct fake_driver* driver_priv; } ;
struct fake_driver {int crcsr_kernel; } ;


 int kfree (int ) ;

__attribute__((used)) static void fake_crcsr_exit(struct vme_bridge *fake_bridge)
{
 struct fake_driver *bridge;

 bridge = fake_bridge->driver_priv;

 kfree(bridge->crcsr_kernel);
}
