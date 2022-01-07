
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int interrupt_in_urb; } ;


 int UNI_CMD_CLOSE ;
 int metrousb_send_unidirectional_cmd (int ,struct usb_serial_port*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void metrousb_cleanup(struct usb_serial_port *port)
{
 usb_kill_urb(port->interrupt_in_urb);

 metrousb_send_unidirectional_cmd(UNI_CMD_CLOSE, port);
}
