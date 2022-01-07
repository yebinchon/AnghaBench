
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int netback_driver ;
 void xenbus_unregister_driver (int *) ;

void xenvif_xenbus_fini(void)
{
 return xenbus_unregister_driver(&netback_driver);
}
