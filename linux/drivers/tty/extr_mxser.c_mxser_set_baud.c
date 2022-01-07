
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tty_struct {struct mxser_port* driver_data; } ;
struct mxser_port {long max_baud; int baud_base; int timeout; unsigned char MCR; scalar_t__ ioaddr; scalar_t__ xmit_fifo_size; } ;


 scalar_t__ BOTHER ;
 scalar_t__ C_BAUD (struct tty_struct*) ;
 int HZ ;
 scalar_t__ UART_DLL ;
 scalar_t__ UART_DLM ;
 scalar_t__ UART_LCR ;
 unsigned char UART_LCR_DLAB ;
 scalar_t__ UART_MCR ;
 unsigned char UART_MCR_DTR ;
 int do_div (int,unsigned int) ;
 unsigned char inb (scalar_t__) ;
 int mxser_set_must_enum_value (scalar_t__,unsigned int) ;
 int outb (unsigned char,scalar_t__) ;
 int tty_encode_baud_rate (struct tty_struct*,unsigned int,unsigned int) ;

__attribute__((used)) static int mxser_set_baud(struct tty_struct *tty, long newspd)
{
 struct mxser_port *info = tty->driver_data;
 unsigned int quot = 0, baud;
 unsigned char cval;
 u64 timeout;

 if (!info->ioaddr)
  return -1;

 if (newspd > info->max_baud)
  return -1;

 if (newspd == 134) {
  quot = 2 * info->baud_base / 269;
  tty_encode_baud_rate(tty, 134, 134);
 } else if (newspd) {
  quot = info->baud_base / newspd;
  if (quot == 0)
   quot = 1;
  baud = info->baud_base/quot;
  tty_encode_baud_rate(tty, baud, baud);
 } else {
  quot = 0;
 }





 timeout = (u64)info->xmit_fifo_size * HZ * 10 * quot;
 do_div(timeout, info->baud_base);
 info->timeout = timeout + HZ / 50;

 if (quot) {
  info->MCR |= UART_MCR_DTR;
  outb(info->MCR, info->ioaddr + UART_MCR);
 } else {
  info->MCR &= ~UART_MCR_DTR;
  outb(info->MCR, info->ioaddr + UART_MCR);
  return 0;
 }

 cval = inb(info->ioaddr + UART_LCR);

 outb(cval | UART_LCR_DLAB, info->ioaddr + UART_LCR);

 outb(quot & 0xff, info->ioaddr + UART_DLL);
 outb(quot >> 8, info->ioaddr + UART_DLM);
 outb(cval, info->ioaddr + UART_LCR);
  mxser_set_must_enum_value(info->ioaddr, 0);

 return 0;
}
