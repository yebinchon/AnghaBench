
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;
struct console {int index; } ;


 struct tty_driver* ehv_bc_driver ;

__attribute__((used)) static struct tty_driver *ehv_bc_console_device(struct console *co, int *index)
{
 *index = co->index;

 return ehv_bc_driver;
}
