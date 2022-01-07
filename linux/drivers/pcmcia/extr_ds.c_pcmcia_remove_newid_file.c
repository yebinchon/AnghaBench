
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_driver {int drv; } ;


 int driver_attr_new_id ;
 int driver_remove_file (int *,int *) ;

__attribute__((used)) static void
pcmcia_remove_newid_file(struct pcmcia_driver *drv)
{
 driver_remove_file(&drv->drv, &driver_attr_new_id);
}
