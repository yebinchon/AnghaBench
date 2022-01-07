
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct serial_struct {int dummy; } ;



__attribute__((used)) static int ipwireless_set_serial_info(struct tty_struct *linux_tty,
          struct serial_struct *ss)
{
 return 0;
}
