
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uart_port {int dummy; } ;
struct TYPE_4__ {TYPE_1__* info; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ PORT_S3C6400 ;
 TYPE_2__* to_ourport (struct uart_port*) ;

__attribute__((used)) static int s3c24xx_serial_has_interrupt_mask(struct uart_port *port)
{
 return to_ourport(port)->info->type == PORT_S3C6400;
}
