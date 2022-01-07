
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_port {int dev; } ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* to_platform_device (int ) ;

__attribute__((used)) static inline const char *asc_port_name(struct uart_port *port)
{
 return to_platform_device(port->dev)->name;
}
