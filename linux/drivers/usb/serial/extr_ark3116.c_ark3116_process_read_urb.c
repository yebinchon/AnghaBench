
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial_port {int port; } ;
struct urb {unsigned char* transfer_buffer; int actual_length; struct usb_serial_port* context; } ;
struct ark3116_private {int lsr; int status_lock; } ;
typedef int __u32 ;


 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 int TTY_OVERRUN ;
 char TTY_PARITY ;
 int UART_LSR_BI ;
 int UART_LSR_BRK_ERROR_BITS ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_flip_buffer_push (int *) ;
 int tty_insert_flip_char (int *,int ,int ) ;
 int tty_insert_flip_string_fixed_flag (int *,unsigned char*,char,int ) ;
 struct ark3116_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static void ark3116_process_read_urb(struct urb *urb)
{
 struct usb_serial_port *port = urb->context;
 struct ark3116_private *priv = usb_get_serial_port_data(port);
 unsigned char *data = urb->transfer_buffer;
 char tty_flag = TTY_NORMAL;
 unsigned long flags;
 __u32 lsr;


 spin_lock_irqsave(&priv->status_lock, flags);
 lsr = priv->lsr;
 priv->lsr &= ~UART_LSR_BRK_ERROR_BITS;
 spin_unlock_irqrestore(&priv->status_lock, flags);

 if (!urb->actual_length)
  return;

 if (lsr & UART_LSR_BRK_ERROR_BITS) {
  if (lsr & UART_LSR_BI)
   tty_flag = TTY_BREAK;
  else if (lsr & UART_LSR_PE)
   tty_flag = TTY_PARITY;
  else if (lsr & UART_LSR_FE)
   tty_flag = TTY_FRAME;


  if (lsr & UART_LSR_OE)
   tty_insert_flip_char(&port->port, 0, TTY_OVERRUN);
 }
 tty_insert_flip_string_fixed_flag(&port->port, data, tty_flag,
       urb->actual_length);
 tty_flip_buffer_push(&port->port);
}
