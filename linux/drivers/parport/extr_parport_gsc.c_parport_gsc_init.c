
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parport_driver ;
 int register_parisc_driver (int *) ;

int parport_gsc_init(void)
{
 return register_parisc_driver(&parport_driver);
}
