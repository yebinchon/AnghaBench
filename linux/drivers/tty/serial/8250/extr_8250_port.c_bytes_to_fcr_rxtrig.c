
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t type; } ;
struct uart_8250_port {TYPE_1__ port; } ;
struct serial8250_config {unsigned char* rxtrig_bytes; } ;


 int EOPNOTSUPP ;
 int UART_FCR_R_TRIG_00 ;
 int UART_FCR_R_TRIG_11 ;
 size_t UART_FCR_R_TRIG_BITS (int ) ;
 int UART_FCR_R_TRIG_MAX_STATE ;
 int UART_FCR_R_TRIG_SHIFT ;
 struct serial8250_config* uart_config ;

__attribute__((used)) static int bytes_to_fcr_rxtrig(struct uart_8250_port *up, unsigned char bytes)
{
 const struct serial8250_config *conf_type = &uart_config[up->port.type];
 int i;

 if (!conf_type->rxtrig_bytes[UART_FCR_R_TRIG_BITS(UART_FCR_R_TRIG_00)])
  return -EOPNOTSUPP;

 for (i = 1; i < UART_FCR_R_TRIG_MAX_STATE; i++) {
  if (bytes < conf_type->rxtrig_bytes[i])

   return (--i) << UART_FCR_R_TRIG_SHIFT;
 }

 return UART_FCR_R_TRIG_11;
}
