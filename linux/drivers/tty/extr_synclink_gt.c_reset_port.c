
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int signals; int reg_addr; } ;


 int IRQ_ALL ;
 int IRQ_MASTER ;
 int SerialSignal_DTR ;
 int SerialSignal_RTS ;
 int rx_stop (struct slgt_info*) ;
 int set_signals (struct slgt_info*) ;
 int slgt_irq_off (struct slgt_info*,int) ;
 int tx_stop (struct slgt_info*) ;

__attribute__((used)) static void reset_port(struct slgt_info *info)
{
 if (!info->reg_addr)
  return;

 tx_stop(info);
 rx_stop(info);

 info->signals &= ~(SerialSignal_RTS | SerialSignal_DTR);
 set_signals(info);

 slgt_irq_off(info, IRQ_ALL | IRQ_MASTER);
}
