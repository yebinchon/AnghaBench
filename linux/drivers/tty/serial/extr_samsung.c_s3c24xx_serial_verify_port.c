
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int dummy; } ;
struct serial_struct {scalar_t__ type; } ;
struct s3c24xx_uart_info {scalar_t__ type; } ;


 int EINVAL ;
 scalar_t__ PORT_UNKNOWN ;
 struct s3c24xx_uart_info* s3c24xx_port_to_info (struct uart_port*) ;

__attribute__((used)) static int
s3c24xx_serial_verify_port(struct uart_port *port, struct serial_struct *ser)
{
 struct s3c24xx_uart_info *info = s3c24xx_port_to_info(port);

 if (ser->type != PORT_UNKNOWN && ser->type != info->type)
  return -EINVAL;

 return 0;
}
