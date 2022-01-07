
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* tty; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
struct slgt_info {int lock; TYPE_4__ port; scalar_t__ netcount; scalar_t__ dsr_chkcount; scalar_t__ ri_chkcount; scalar_t__ cts_chkcount; scalar_t__ dcd_chkcount; TYPE_1__ params; } ;
struct TYPE_6__ {int c_cflag; } ;
struct TYPE_7__ {TYPE_2__ termios; } ;


 int CREAD ;
 int IRQ_CTS ;
 int IRQ_DCD ;
 int IRQ_DSR ;
 int IRQ_RI ;
 scalar_t__ MGSL_MODE_ASYNC ;
 int async_mode (struct slgt_info*) ;
 int get_signals (struct slgt_info*) ;
 int rx_start (struct slgt_info*) ;
 int rx_stop (struct slgt_info*) ;
 int set_signals (struct slgt_info*) ;
 int slgt_irq_on (struct slgt_info*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sync_mode (struct slgt_info*) ;
 int tx_stop (struct slgt_info*) ;

__attribute__((used)) static void program_hw(struct slgt_info *info)
{
 unsigned long flags;

 spin_lock_irqsave(&info->lock,flags);

 rx_stop(info);
 tx_stop(info);

 if (info->params.mode != MGSL_MODE_ASYNC ||
     info->netcount)
  sync_mode(info);
 else
  async_mode(info);

 set_signals(info);

 info->dcd_chkcount = 0;
 info->cts_chkcount = 0;
 info->ri_chkcount = 0;
 info->dsr_chkcount = 0;

 slgt_irq_on(info, IRQ_DCD | IRQ_CTS | IRQ_DSR | IRQ_RI);
 get_signals(info);

 if (info->netcount ||
     (info->port.tty && info->port.tty->termios.c_cflag & CREAD))
  rx_start(info);

 spin_unlock_irqrestore(&info->lock,flags);
}
