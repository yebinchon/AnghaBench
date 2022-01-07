
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dbc_tty_driver ;
 int put_tty_driver (int *) ;
 int tty_unregister_driver (int *) ;

void xhci_dbc_tty_unregister_driver(void)
{
 if (dbc_tty_driver) {
  tty_unregister_driver(dbc_tty_driver);
  put_tty_driver(dbc_tty_driver);
  dbc_tty_driver = ((void*)0);
 }
}
