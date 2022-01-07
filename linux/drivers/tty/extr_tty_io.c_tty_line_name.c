
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int flags; char* name; scalar_t__ name_base; } ;
typedef int ssize_t ;


 int TTY_DRIVER_UNNUMBERED_NODE ;
 int sprintf (char*,char*,char*,...) ;

__attribute__((used)) static ssize_t tty_line_name(struct tty_driver *driver, int index, char *p)
{
 if (driver->flags & TTY_DRIVER_UNNUMBERED_NODE)
  return sprintf(p, "%s", driver->name);
 else
  return sprintf(p, "%s%d", driver->name,
          index + driver->name_base);
}
