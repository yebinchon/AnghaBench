
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int put_tty_driver (int *) ;
 int tty_unregister_driver (int *) ;
 int * vcc_tty_driver ;
 int vccdbg (char*) ;

__attribute__((used)) static void vcc_tty_exit(void)
{
 tty_unregister_driver(vcc_tty_driver);
 put_tty_driver(vcc_tty_driver);
 vccdbg("VCC: TTY driver unregistered\n");

 vcc_tty_driver = ((void*)0);
}
