
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; int tty; } ;
struct async_icount {int overrun; int frame; int parity; int brk; int rx; } ;
struct serial_state {int ignore_status_mask; int read_status_mask; TYPE_1__ tport; struct async_icount icount; } ;
struct TYPE_5__ {int serdatr; int intreq; } ;


 int ASYNC_SAK ;
 int IF_RBF ;
 int SDR_OVRUN ;
 unsigned char TTY_BREAK ;
 unsigned char TTY_FRAME ;
 unsigned char TTY_NORMAL ;
 unsigned char TTY_OVERRUN ;
 unsigned char TTY_PARITY ;
 int UART_LSR_BI ;
 int UART_LSR_DR ;
 int UART_LSR_FE ;
 int UART_LSR_OE ;
 int UART_LSR_PE ;
 TYPE_3__ custom ;
 int do_SAK (int ) ;
 int mb () ;
 int printk (char*,...) ;
 int tty_flip_buffer_push (TYPE_1__*) ;
 int tty_insert_flip_char (TYPE_1__*,unsigned char,unsigned char) ;

__attribute__((used)) static void receive_chars(struct serial_state *info)
{
        int status;
 int serdatr;
 unsigned char ch, flag;
 struct async_icount *icount;
 int oe = 0;

 icount = &info->icount;

 status = UART_LSR_DR;
 serdatr = custom.serdatr;
 mb();
 custom.intreq = IF_RBF;
 mb();

 if((serdatr & 0x1ff) == 0)
     status |= UART_LSR_BI;
 if(serdatr & SDR_OVRUN)
     status |= UART_LSR_OE;

 ch = serdatr & 0xff;
 icount->rx++;




 flag = TTY_NORMAL;







 if (status & (UART_LSR_BI | UART_LSR_PE |
        UART_LSR_FE | UART_LSR_OE)) {



   if (status & UART_LSR_BI) {
     status &= ~(UART_LSR_FE | UART_LSR_PE);
     icount->brk++;
   } else if (status & UART_LSR_PE)
     icount->parity++;
   else if (status & UART_LSR_FE)
     icount->frame++;
   if (status & UART_LSR_OE)
     icount->overrun++;






   if (status & info->ignore_status_mask)
     goto out;

   status &= info->read_status_mask;

   if (status & (UART_LSR_BI)) {



     flag = TTY_BREAK;
     if (info->tport.flags & ASYNC_SAK)
       do_SAK(info->tport.tty);
   } else if (status & UART_LSR_PE)
     flag = TTY_PARITY;
   else if (status & UART_LSR_FE)
     flag = TTY_FRAME;
   if (status & UART_LSR_OE) {





      oe = 1;
   }
 }
 tty_insert_flip_char(&info->tport, ch, flag);
 if (oe == 1)
  tty_insert_flip_char(&info->tport, 0, TTY_OVERRUN);
 tty_flip_buffer_push(&info->tport);
out:
 return;
}
