
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct edgeport_port {TYPE_2__* port; } ;
typedef int __u8 ;
struct TYPE_4__ {int port_number; TYPE_1__* serial; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ UMPM_UART1_PORT ;
 int send_cmd (int ,int,int ,int,int *,int ) ;

__attribute__((used)) static int ti_do_config(struct edgeport_port *port, int feature, int on)
{
 int port_number = port->port->port_number;

 on = !!on;
 return send_cmd(port->port->serial->dev,
   feature, (__u8)(UMPM_UART1_PORT + port_number),
   on, ((void*)0), 0);
}
