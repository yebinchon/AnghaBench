
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * goldfish_tty_driver ;
 int * goldfish_ttys ;
 int kfree (int *) ;
 int put_tty_driver (int *) ;
 int tty_unregister_driver (int *) ;

__attribute__((used)) static void goldfish_tty_delete_driver(void)
{
 tty_unregister_driver(goldfish_tty_driver);
 put_tty_driver(goldfish_tty_driver);
 goldfish_tty_driver = ((void*)0);
 kfree(goldfish_ttys);
 goldfish_ttys = ((void*)0);
}
