
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_driver {int driver; } ;


 int driver_unregister (int *) ;

void tc_unregister_driver(struct tc_driver *tdrv)
{
 driver_unregister(&tdrv->driver);
}
