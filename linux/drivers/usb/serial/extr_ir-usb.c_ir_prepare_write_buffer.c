
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int lock; int write_fifo; } ;


 unsigned char ir_baud ;
 unsigned char ir_xbof ;
 int kfifo_out_locked (int *,unsigned char*,size_t,int *) ;

__attribute__((used)) static int ir_prepare_write_buffer(struct usb_serial_port *port,
      void *dest, size_t size)
{
 unsigned char *buf = dest;
 int count;
 *buf = ir_xbof | ir_baud;

 count = kfifo_out_locked(&port->write_fifo, buf + 1, size - 1,
        &port->lock);
 return count + 1;
}
