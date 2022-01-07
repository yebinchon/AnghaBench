
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {TYPE_3__* tty; } ;
struct TYPE_15__ {scalar_t__ mode; } ;
struct TYPE_19__ {int ie1_value; int lock; TYPE_4__ port; scalar_t__ netcount; scalar_t__ dsr_chkcount; scalar_t__ ri_chkcount; scalar_t__ cts_chkcount; scalar_t__ dcd_chkcount; TYPE_1__ params; scalar_t__ tx_get; scalar_t__ tx_put; scalar_t__ tx_count; } ;
struct TYPE_16__ {int c_cflag; } ;
struct TYPE_17__ {TYPE_2__ termios; } ;
typedef TYPE_5__ SLMP_INFO ;


 int CCTS ;
 int CDCD ;
 int CREAD ;
 int IE1 ;
 scalar_t__ MGSL_MODE_HDLC ;
 int async_mode (TYPE_5__*) ;
 int get_signals (TYPE_5__*) ;
 int hdlc_mode (TYPE_5__*) ;
 int rx_start (TYPE_5__*) ;
 int rx_stop (TYPE_5__*) ;
 int set_signals (TYPE_5__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tx_stop (TYPE_5__*) ;
 int write_reg (TYPE_5__*,int ,int) ;

__attribute__((used)) static void program_hw(SLMP_INFO *info)
{
 unsigned long flags;

 spin_lock_irqsave(&info->lock,flags);

 rx_stop(info);
 tx_stop(info);

 info->tx_count = info->tx_put = info->tx_get = 0;

 if (info->params.mode == MGSL_MODE_HDLC || info->netcount)
  hdlc_mode(info);
 else
  async_mode(info);

 set_signals(info);

 info->dcd_chkcount = 0;
 info->cts_chkcount = 0;
 info->ri_chkcount = 0;
 info->dsr_chkcount = 0;

 info->ie1_value |= (CDCD|CCTS);
 write_reg(info, IE1, info->ie1_value);

 get_signals(info);

 if (info->netcount || (info->port.tty && info->port.tty->termios.c_cflag & CREAD) )
  rx_start(info);

 spin_unlock_irqrestore(&info->lock,flags);
}
