
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whiteheat_simple {scalar_t__ port; } ;
struct usb_serial_port {scalar_t__ port_number; } ;
typedef int open_command ;
typedef int __u8 ;


 int WHITEHEAT_OPEN ;
 int firm_send_command (struct usb_serial_port*,int ,int *,int) ;

__attribute__((used)) static int firm_open(struct usb_serial_port *port)
{
 struct whiteheat_simple open_command;

 open_command.port = port->port_number + 1;
 return firm_send_command(port, WHITEHEAT_OPEN,
  (__u8 *)&open_command, sizeof(open_command));
}
