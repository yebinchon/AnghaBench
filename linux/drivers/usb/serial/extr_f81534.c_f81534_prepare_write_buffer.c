
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int lock; int write_fifo; } ;
struct f81534_port_private {int phy_num; } ;


 int F81534_MAX_TX_SIZE ;
 int F81534_NUM_PORT ;
 int F81534_RECEIVE_BLOCK_SIZE ;
 int F81534_TOKEN_WRITE ;
 int kfifo_out_locked (int *,int*,int ,int *) ;
 struct f81534_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void f81534_prepare_write_buffer(struct usb_serial_port *port, u8 *buf)
{
 struct f81534_port_private *port_priv = usb_get_serial_port_data(port);
 int phy_num = port_priv->phy_num;
 u8 tx_len;
 int i;
 for (i = 0; i < F81534_NUM_PORT; ++i) {
  buf[i * F81534_RECEIVE_BLOCK_SIZE] = i;
  buf[i * F81534_RECEIVE_BLOCK_SIZE + 1] = F81534_TOKEN_WRITE;
  buf[i * F81534_RECEIVE_BLOCK_SIZE + 2] = 0;
  buf[i * F81534_RECEIVE_BLOCK_SIZE + 3] = 0;
 }

 tx_len = kfifo_out_locked(&port->write_fifo,
    &buf[phy_num * F81534_RECEIVE_BLOCK_SIZE + 4],
    F81534_MAX_TX_SIZE, &port->lock);

 buf[phy_num * F81534_RECEIVE_BLOCK_SIZE + 2] = tx_len;
}
