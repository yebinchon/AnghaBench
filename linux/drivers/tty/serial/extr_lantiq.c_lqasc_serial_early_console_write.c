
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct earlycon_device {int port; } ;
struct console {struct earlycon_device* data; } ;


 int lqasc_serial_port_write (int *,char const*,int ) ;

__attribute__((used)) static void lqasc_serial_early_console_write(struct console *co,
          const char *s,
          u_int count)
{
 struct earlycon_device *dev = co->data;

 lqasc_serial_port_write(&dev->port, s, count);
}
