
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aic7770_driver ;
 int eisa_driver_unregister (int *) ;

void
ahc_linux_eisa_exit(void)
{
 eisa_driver_unregister(&aic7770_driver);
}
