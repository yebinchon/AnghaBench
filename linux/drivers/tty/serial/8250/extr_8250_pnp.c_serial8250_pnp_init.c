
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pnp_register_driver (int *) ;
 int serial_pnp_driver ;

int serial8250_pnp_init(void)
{
 return pnp_register_driver(&serial_pnp_driver);
}
