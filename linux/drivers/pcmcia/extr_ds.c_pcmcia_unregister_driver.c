
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_driver {int drv; int name; } ;


 int driver_unregister (int *) ;
 int pcmcia_free_dynids (struct pcmcia_driver*) ;
 int pcmcia_remove_newid_file (struct pcmcia_driver*) ;
 int pr_debug (char*,int ) ;

void pcmcia_unregister_driver(struct pcmcia_driver *driver)
{
 pr_debug("unregistering driver %s\n", driver->name);
 pcmcia_remove_newid_file(driver);
 driver_unregister(&driver->drv);
 pcmcia_free_dynids(driver);
}
