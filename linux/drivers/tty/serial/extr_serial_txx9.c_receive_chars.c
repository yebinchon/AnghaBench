
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int overrun; int frame; int parity; int brk; int rx; } ;
struct TYPE_8__ {unsigned int ignore_status_mask; unsigned int read_status_mask; int lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct uart_txx9_port {TYPE_3__ port; } ;
struct TYPE_7__ {int port; } ;


 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_PARITY ;
 int TXX9_SIDISR ;
 unsigned int TXX9_SIDISR_RFDN_MASK ;
 unsigned int TXX9_SIDISR_UBRK ;
 unsigned int TXX9_SIDISR_UFER ;
 unsigned int TXX9_SIDISR_UOER ;
 unsigned int TXX9_SIDISR_UPER ;
 unsigned int TXX9_SIDISR_UVALID ;
 int TXX9_SIRFIFO ;
 void* sio_in (struct uart_txx9_port*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tty_flip_buffer_push (int *) ;
 scalar_t__ uart_handle_break (TYPE_3__*) ;
 scalar_t__ uart_handle_sysrq_char (TYPE_3__*,unsigned char) ;
 int uart_insert_char (TYPE_3__*,unsigned int,unsigned int,unsigned char,char) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static inline void
receive_chars(struct uart_txx9_port *up, unsigned int *status)
{
 unsigned char ch;
 unsigned int disr = *status;
 int max_count = 256;
 char flag;
 unsigned int next_ignore_status_mask;

 do {
  ch = sio_in(up, TXX9_SIRFIFO);
  flag = TTY_NORMAL;
  up->port.icount.rx++;


  next_ignore_status_mask =
   up->port.ignore_status_mask & ~TXX9_SIDISR_RFDN_MASK;
  if (unlikely(disr & (TXX9_SIDISR_UBRK | TXX9_SIDISR_UPER |
         TXX9_SIDISR_UFER | TXX9_SIDISR_UOER))) {



   if (disr & TXX9_SIDISR_UBRK) {
    disr &= ~(TXX9_SIDISR_UFER | TXX9_SIDISR_UPER);
    up->port.icount.brk++;






    if (uart_handle_break(&up->port))
     goto ignore_char;
   } else if (disr & TXX9_SIDISR_UPER)
    up->port.icount.parity++;
   else if (disr & TXX9_SIDISR_UFER)
    up->port.icount.frame++;
   if (disr & TXX9_SIDISR_UOER) {
    up->port.icount.overrun++;






    next_ignore_status_mask |=
     TXX9_SIDISR_RFDN_MASK;
   }




   disr &= up->port.read_status_mask;

   if (disr & TXX9_SIDISR_UBRK) {
    flag = TTY_BREAK;
   } else if (disr & TXX9_SIDISR_UPER)
    flag = TTY_PARITY;
   else if (disr & TXX9_SIDISR_UFER)
    flag = TTY_FRAME;
  }
  if (uart_handle_sysrq_char(&up->port, ch))
   goto ignore_char;

  uart_insert_char(&up->port, disr, TXX9_SIDISR_UOER, ch, flag);

 ignore_char:
  up->port.ignore_status_mask = next_ignore_status_mask;
  disr = sio_in(up, TXX9_SIDISR);
 } while (!(disr & TXX9_SIDISR_UVALID) && (max_count-- > 0));
 spin_unlock(&up->port.lock);
 tty_flip_buffer_push(&up->port.state->port);
 spin_lock(&up->port.lock);
 *status = disr;
}
