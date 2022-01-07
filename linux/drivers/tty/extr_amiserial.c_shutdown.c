
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int flags; } ;
struct TYPE_6__ {int delta_msr_wait; } ;
struct TYPE_5__ {int * buf; } ;
struct serial_state {int MCR; TYPE_2__ tport; scalar_t__ IER; TYPE_1__ xmit; int line; } ;
struct TYPE_7__ {int intena; int adkcon; } ;


 int AC_UARTBRK ;
 scalar_t__ C_HUPCL (struct tty_struct*) ;
 int IF_RBF ;
 int IF_TBE ;
 int IRQ_AMIGA_VERTB ;
 int SER_DTR ;
 int SER_RTS ;
 int TTY_IO_ERROR ;
 TYPE_4__ custom ;
 int free_irq (int ,struct serial_state*) ;
 int free_page (unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mb () ;
 int printk (char*,int ) ;
 int rtsdtr_ctrl (int) ;
 int set_bit (int ,int *) ;
 int tty_port_initialized (TYPE_2__*) ;
 int tty_port_set_initialized (TYPE_2__*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void shutdown(struct tty_struct *tty, struct serial_state *info)
{
 unsigned long flags;
 struct serial_state *state;

 if (!tty_port_initialized(&info->tport))
  return;

 state = info;





 local_irq_save(flags);





 wake_up_interruptible(&info->tport.delta_msr_wait);




 free_irq(IRQ_AMIGA_VERTB, info);

 if (info->xmit.buf) {
  free_page((unsigned long) info->xmit.buf);
  info->xmit.buf = ((void*)0);
 }

 info->IER = 0;
 custom.intena = IF_RBF | IF_TBE;
 mb();


 custom.adkcon = AC_UARTBRK;
 mb();

 if (C_HUPCL(tty))
  info->MCR &= ~(SER_DTR|SER_RTS);
 rtsdtr_ctrl(info->MCR);

 set_bit(TTY_IO_ERROR, &tty->flags);

 tty_port_set_initialized(&info->tport, 0);
 local_irq_restore(flags);
}
