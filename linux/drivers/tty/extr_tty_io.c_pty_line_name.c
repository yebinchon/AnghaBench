
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int name_base; scalar_t__ subtype; char* name; } ;


 scalar_t__ PTY_TYPE_SLAVE ;
 int* ptychar ;
 int sprintf (char*,char*,char*,int,int) ;

__attribute__((used)) static void pty_line_name(struct tty_driver *driver, int index, char *p)
{
 int i = index + driver->name_base;

 sprintf(p, "%s%c%x",
  driver->subtype == PTY_TYPE_SLAVE ? "tty" : driver->name,
  ptychar[i >> 4 & 0xf], i & 0xf);
}
