
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int lock; int write_fifo; } ;


 int HCI_HEADER_LENGTH ;
 unsigned char TX_HEADER_0 ;
 unsigned char TX_HEADER_1 ;
 int kfifo_out_locked (int *,unsigned char*,int,int *) ;
 int put_unaligned_le16 (int,unsigned char*) ;

__attribute__((used)) static int aircable_prepare_write_buffer(struct usb_serial_port *port,
      void *dest, size_t size)
{
 int count;
 unsigned char *buf = dest;

 count = kfifo_out_locked(&port->write_fifo, buf + HCI_HEADER_LENGTH,
     size - HCI_HEADER_LENGTH, &port->lock);
 buf[0] = TX_HEADER_0;
 buf[1] = TX_HEADER_1;
 put_unaligned_le16(count, &buf[2]);

 return count + HCI_HEADER_LENGTH;
}
