
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int lock; int write_fifo; } ;


 int kfifo_out_locked (int *,void*,size_t,int *) ;

int usb_serial_generic_prepare_write_buffer(struct usb_serial_port *port,
      void *dest, size_t size)
{
 return kfifo_out_locked(&port->write_fifo, dest, size, &port->lock);
}
