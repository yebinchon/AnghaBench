
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;


 int CP210X_IFC_ENABLE ;
 int CP210X_PURGE ;
 int PURGE_ALL ;
 int UART_DISABLE ;
 int cp210x_write_u16_reg (struct usb_serial_port*,int ,int ) ;
 int usb_serial_generic_close (struct usb_serial_port*) ;

__attribute__((used)) static void cp210x_close(struct usb_serial_port *port)
{
 usb_serial_generic_close(port);


 cp210x_write_u16_reg(port, CP210X_PURGE, PURGE_ALL);

 cp210x_write_u16_reg(port, CP210X_IFC_ENABLE, UART_DISABLE);
}
