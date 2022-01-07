
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int PMSG_SUSPEND ;
 int __pnp_bus_suspend (struct device*,int ) ;

__attribute__((used)) static int pnp_bus_suspend(struct device *dev)
{
 return __pnp_bus_suspend(dev, PMSG_SUSPEND);
}
