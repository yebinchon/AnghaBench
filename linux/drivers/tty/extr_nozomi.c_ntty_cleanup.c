
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int * driver_data; } ;



__attribute__((used)) static void ntty_cleanup(struct tty_struct *tty)
{
 tty->driver_data = ((void*)0);
}
