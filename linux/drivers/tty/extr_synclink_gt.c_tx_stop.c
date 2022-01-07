
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {int tx_enabled; int tx_active; int tx_timer; } ;


 unsigned short BIT1 ;
 unsigned short BIT2 ;
 scalar_t__ IRQ_TXDATA ;
 scalar_t__ IRQ_TXIDLE ;
 scalar_t__ IRQ_TXUNDER ;
 int SSR ;
 int TCR ;
 int del_timer (int *) ;
 unsigned short rd_reg16 (struct slgt_info*,int ) ;
 int reset_tbufs (struct slgt_info*) ;
 int slgt_irq_off (struct slgt_info*,scalar_t__) ;
 int tdma_reset (struct slgt_info*) ;
 int wr_reg16 (struct slgt_info*,int ,unsigned short) ;

__attribute__((used)) static void tx_stop(struct slgt_info *info)
{
 unsigned short val;

 del_timer(&info->tx_timer);

 tdma_reset(info);


 val = rd_reg16(info, TCR) & ~BIT1;
 wr_reg16(info, TCR, (unsigned short)(val | BIT2));

 slgt_irq_off(info, IRQ_TXDATA + IRQ_TXIDLE + IRQ_TXUNDER);


 wr_reg16(info, SSR, (unsigned short)(IRQ_TXIDLE + IRQ_TXUNDER));

 reset_tbufs(info);

 info->tx_enabled = 0;
 info->tx_active = 0;
}
