
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pnp_unregister_driver (int *) ;
 int serial_pnp_driver ;

void serial8250_pnp_exit(void)
{
 pnp_unregister_driver(&serial_pnp_driver);
}
