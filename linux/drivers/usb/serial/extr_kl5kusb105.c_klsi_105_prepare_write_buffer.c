
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int lock; int write_fifo; } ;


 int KLSI_HDR_LEN ;
 int kfifo_out_locked (int *,unsigned char*,size_t,int *) ;
 int put_unaligned_le16 (int,unsigned char*) ;

__attribute__((used)) static int klsi_105_prepare_write_buffer(struct usb_serial_port *port,
      void *dest, size_t size)
{
 unsigned char *buf = dest;
 int count;

 count = kfifo_out_locked(&port->write_fifo, buf + KLSI_HDR_LEN, size,
        &port->lock);
 put_unaligned_le16(count, buf);

 return count + KLSI_HDR_LEN;
}
