
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_driver {int drv; } ;


 int driver_unregister (int *) ;

void scm_driver_unregister(struct scm_driver *scmdrv)
{
 driver_unregister(&scmdrv->drv);
}
