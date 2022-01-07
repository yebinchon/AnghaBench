
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;
struct console {int dummy; } ;


 struct tty_driver* ttynull_driver ;

__attribute__((used)) static struct tty_driver *ttynull_device(struct console *c, int *index)
{
 *index = 0;
 return ttynull_driver;
}
