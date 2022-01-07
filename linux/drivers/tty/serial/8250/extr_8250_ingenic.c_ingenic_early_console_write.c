
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct console {int dummy; } ;
struct TYPE_2__ {int port; } ;


 TYPE_1__* early_device ;
 int ingenic_early_console_putc ;
 int uart_console_write (int *,char const*,unsigned int,int ) ;

__attribute__((used)) static void ingenic_early_console_write(struct console *console,
           const char *s, unsigned int count)
{
 uart_console_write(&early_device->port, s, count,
      ingenic_early_console_putc);
}
