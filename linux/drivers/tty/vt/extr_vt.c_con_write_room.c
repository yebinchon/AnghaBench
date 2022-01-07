
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ stopped; } ;



__attribute__((used)) static int con_write_room(struct tty_struct *tty)
{
 if (tty->stopped)
  return 0;
 return 32768;
}
