
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct au1550_spi {TYPE_1__* regs; scalar_t__ usedma; } ;
struct TYPE_2__ {int psc_spicfg; int psc_spistat; int psc_ctrl; int psc_sel; } ;


 int PSC_CTRL_DISABLE ;
 int PSC_CTRL_ENABLE ;
 int PSC_SEL_PS_SPIMODE ;
 int PSC_SPICFG_DD_DISABLE ;
 int PSC_SPICFG_DE_ENABLE ;
 int PSC_SPICFG_LB ;
 int PSC_SPICFG_RT_FIFO8 ;
 int PSC_SPICFG_SET_BAUD (int) ;
 int PSC_SPICFG_SET_DIV (int ) ;
 int PSC_SPICFG_SET_LEN (int) ;
 int PSC_SPICFG_TT_FIFO8 ;
 int PSC_SPISTAT_DR ;
 int PSC_SPISTAT_SR ;
 int au1550_spi_mask_ack_all (struct au1550_spi*) ;
 int au1550_spi_reset_fifos (struct au1550_spi*) ;
 int wmb () ;

__attribute__((used)) static void au1550_spi_setup_psc_as_spi(struct au1550_spi *hw)
{
 u32 stat, cfg;


 hw->regs->psc_ctrl = PSC_CTRL_DISABLE;
 wmb();
 hw->regs->psc_sel = PSC_SEL_PS_SPIMODE;
 wmb();

 hw->regs->psc_spicfg = 0;
 wmb();

 hw->regs->psc_ctrl = PSC_CTRL_ENABLE;
 wmb();

 do {
  stat = hw->regs->psc_spistat;
  wmb();
 } while ((stat & PSC_SPISTAT_SR) == 0);


 cfg = hw->usedma ? 0 : PSC_SPICFG_DD_DISABLE;
 cfg |= PSC_SPICFG_SET_LEN(8);
 cfg |= PSC_SPICFG_RT_FIFO8 | PSC_SPICFG_TT_FIFO8;

 cfg |= PSC_SPICFG_SET_BAUD(4) | PSC_SPICFG_SET_DIV(0);





 hw->regs->psc_spicfg = cfg;
 wmb();

 au1550_spi_mask_ack_all(hw);

 hw->regs->psc_spicfg |= PSC_SPICFG_DE_ENABLE;
 wmb();

 do {
  stat = hw->regs->psc_spistat;
  wmb();
 } while ((stat & PSC_SPISTAT_DR) == 0);

 au1550_spi_reset_fifos(hw);
}
