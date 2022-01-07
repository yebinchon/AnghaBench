
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * gs_tty_driver ;
 int put_tty_driver (int *) ;
 int tty_unregister_driver (int *) ;

__attribute__((used)) static void userial_cleanup(void)
{
 tty_unregister_driver(gs_tty_driver);
 put_tty_driver(gs_tty_driver);
 gs_tty_driver = ((void*)0);
}
