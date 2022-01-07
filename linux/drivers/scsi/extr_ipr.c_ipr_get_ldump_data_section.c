
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int sense_uproc_interrupt_reg32; int clr_interrupt_reg; int clr_uproc_interrupt_reg32; int set_uproc_interrupt_reg32; } ;
struct ipr_ioa_cfg {TYPE_2__ regs; int ioa_mailbox; TYPE_1__* pdev; scalar_t__ sis64; } ;
typedef int __be32 ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int IPR_LDUMP_MAX_LONG_ACK_DELAY_IN_USEC ;
 int IPR_LDUMP_MAX_SHORT_ACK_DELAY_IN_USEC ;
 int volatile IPR_PCII_IO_DEBUG_ACKNOWLEDGE ;
 int volatile IPR_UPROCI_IO_DEBUG_ALERT ;
 int volatile IPR_UPROCI_RESET_ALERT ;
 int cpu_to_be32 (int) ;
 int dev_err (int *,char*) ;
 int ipr_get_sis64_dump_data_section (struct ipr_ioa_cfg*,int,int *,int) ;
 scalar_t__ ipr_wait_iodbg_ack (struct ipr_ioa_cfg*,int) ;
 int readl (int ) ;
 int udelay (int) ;
 int writel (int volatile,int ) ;

__attribute__((used)) static int ipr_get_ldump_data_section(struct ipr_ioa_cfg *ioa_cfg,
          u32 start_addr,
          __be32 *dest, u32 length_in_words)
{
 volatile u32 temp_pcii_reg;
 int i, delay = 0;

 if (ioa_cfg->sis64)
  return ipr_get_sis64_dump_data_section(ioa_cfg, start_addr,
             dest, length_in_words);


 writel((IPR_UPROCI_RESET_ALERT | IPR_UPROCI_IO_DEBUG_ALERT),
        ioa_cfg->regs.set_uproc_interrupt_reg32);


 if (ipr_wait_iodbg_ack(ioa_cfg,
          IPR_LDUMP_MAX_LONG_ACK_DELAY_IN_USEC)) {
  dev_err(&ioa_cfg->pdev->dev,
   "IOA dump long data transfer timeout\n");
  return -EIO;
 }


 writel(IPR_PCII_IO_DEBUG_ACKNOWLEDGE,
        ioa_cfg->regs.clr_interrupt_reg);


 writel(start_addr, ioa_cfg->ioa_mailbox);


 writel(IPR_UPROCI_RESET_ALERT,
        ioa_cfg->regs.clr_uproc_interrupt_reg32);

 for (i = 0; i < length_in_words; i++) {

  if (ipr_wait_iodbg_ack(ioa_cfg,
           IPR_LDUMP_MAX_SHORT_ACK_DELAY_IN_USEC)) {
   dev_err(&ioa_cfg->pdev->dev,
    "IOA dump short data transfer timeout\n");
   return -EIO;
  }


  *dest = cpu_to_be32(readl(ioa_cfg->ioa_mailbox));
  dest++;


  if (i < (length_in_words - 1)) {

   writel(IPR_PCII_IO_DEBUG_ACKNOWLEDGE,
          ioa_cfg->regs.clr_interrupt_reg);
  }
 }


 writel(IPR_UPROCI_RESET_ALERT,
        ioa_cfg->regs.set_uproc_interrupt_reg32);

 writel(IPR_UPROCI_IO_DEBUG_ALERT,
        ioa_cfg->regs.clr_uproc_interrupt_reg32);


 writel(IPR_PCII_IO_DEBUG_ACKNOWLEDGE,
        ioa_cfg->regs.clr_interrupt_reg);


 while (delay < IPR_LDUMP_MAX_SHORT_ACK_DELAY_IN_USEC) {
  temp_pcii_reg =
      readl(ioa_cfg->regs.sense_uproc_interrupt_reg32);

  if (!(temp_pcii_reg & IPR_UPROCI_RESET_ALERT))
   return 0;

  udelay(10);
  delay += 10;
 }

 return 0;
}
