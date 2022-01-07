
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int netback_driver ;
 int xenbus_register_backend (int *) ;

int xenvif_xenbus_init(void)
{
 return xenbus_register_backend(&netback_driver);
}
