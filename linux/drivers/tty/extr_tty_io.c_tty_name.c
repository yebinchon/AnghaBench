
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {char const* name; } ;



const char *tty_name(const struct tty_struct *tty)
{
 if (!tty)
  return "NULL tty";
 return tty->name;
}
