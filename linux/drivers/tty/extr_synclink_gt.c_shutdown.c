
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* tty; } ;
struct slgt_info {int signals; TYPE_3__ port; int lock; int gpio_wait_q; int * tx_buf; int rx_timer; int tx_timer; int event_wait_q; int status_event_wait_q; int device_name; } ;
struct TYPE_5__ {int c_cflag; } ;
struct TYPE_6__ {int flags; TYPE_1__ termios; } ;


 int DBGINFO (char*) ;
 int HUPCL ;
 int IRQ_ALL ;
 int IRQ_MASTER ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 int TTY_IO_ERROR ;
 int del_timer_sync (int *) ;
 int flush_cond_wait (int *) ;
 int kfree (int *) ;
 int rx_stop (struct slgt_info*) ;
 int set_bit (int ,int *) ;
 int set_signals (struct slgt_info*) ;
 int slgt_irq_off (struct slgt_info*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_initialized (TYPE_3__*) ;
 int tty_port_set_initialized (TYPE_3__*,int ) ;
 int tx_stop (struct slgt_info*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void shutdown(struct slgt_info *info)
{
 unsigned long flags;

 if (!tty_port_initialized(&info->port))
  return;

 DBGINFO(("%s shutdown\n", info->device_name));



 wake_up_interruptible(&info->status_event_wait_q);
 wake_up_interruptible(&info->event_wait_q);

 del_timer_sync(&info->tx_timer);
 del_timer_sync(&info->rx_timer);

 kfree(info->tx_buf);
 info->tx_buf = ((void*)0);

 spin_lock_irqsave(&info->lock,flags);

 tx_stop(info);
 rx_stop(info);

 slgt_irq_off(info, IRQ_ALL | IRQ_MASTER);

  if (!info->port.tty || info->port.tty->termios.c_cflag & HUPCL) {
  info->signals &= ~(SerialSignal_RTS | SerialSignal_DTR);
  set_signals(info);
 }

 flush_cond_wait(&info->gpio_wait_q);

 spin_unlock_irqrestore(&info->lock,flags);

 if (info->port.tty)
  set_bit(TTY_IO_ERROR, &info->port.tty->flags);

 tty_port_set_initialized(&info->port, 0);
}
