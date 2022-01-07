
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_driver {int drv; } ;


 int driver_unregister (int *) ;

void unregister_rpmsg_driver(struct rpmsg_driver *rpdrv)
{
 driver_unregister(&rpdrv->drv);
}
