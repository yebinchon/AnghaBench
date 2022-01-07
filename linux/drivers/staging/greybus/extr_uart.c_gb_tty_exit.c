
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gb_tty_driver ;
 int idr_destroy (int *) ;
 int put_tty_driver (int ) ;
 int tty_minors ;
 int tty_unregister_driver (int ) ;

__attribute__((used)) static void gb_tty_exit(void)
{
 tty_unregister_driver(gb_tty_driver);
 put_tty_driver(gb_tty_driver);
 idr_destroy(&tty_minors);
}
