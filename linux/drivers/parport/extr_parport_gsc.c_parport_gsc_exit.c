
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parport_driver ;
 int unregister_parisc_driver (int *) ;

__attribute__((used)) static void parport_gsc_exit(void)
{
 unregister_parisc_driver(&parport_driver);
}
