
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int dummy; } ;
struct f81534_port_private {int tx_empty; } ;


 int F81534_TX_EMPTY_BIT ;
 int test_bit (int ,int *) ;
 struct f81534_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static bool f81534_tx_empty(struct usb_serial_port *port)
{
 struct f81534_port_private *port_priv = usb_get_serial_port_data(port);

 return test_bit(F81534_TX_EMPTY_BIT, &port_priv->tx_empty);
}
