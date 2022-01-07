
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t type; } ;
struct uart_8250_port {int fcr; TYPE_1__ port; } ;
struct serial8250_config {unsigned char* rxtrig_bytes; } ;


 int EOPNOTSUPP ;
 size_t UART_FCR_R_TRIG_BITS (int ) ;
 struct serial8250_config* uart_config ;

__attribute__((used)) static int fcr_get_rxtrig_bytes(struct uart_8250_port *up)
{
 const struct serial8250_config *conf_type = &uart_config[up->port.type];
 unsigned char bytes;

 bytes = conf_type->rxtrig_bytes[UART_FCR_R_TRIG_BITS(up->fcr)];

 return bytes ? bytes : -EOPNOTSUPP;
}
