
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct img_spfi {int dummy; } ;


 int SPFI_INTERRUPT_CLEAR ;
 int SPFI_INTERRUPT_SDFUL ;
 int SPFI_INTERRUPT_STATUS ;
 int SPFI_TX_8BIT_VALID_DATA ;
 int spfi_readl (struct img_spfi*,int ) ;
 int spfi_writel (struct img_spfi*,int const,int ) ;

__attribute__((used)) static unsigned int spfi_pio_write8(struct img_spfi *spfi, const u8 *buf,
        unsigned int max)
{
 unsigned int count = 0;
 u32 status;

 while (count < max) {
  spfi_writel(spfi, SPFI_INTERRUPT_SDFUL, SPFI_INTERRUPT_CLEAR);
  status = spfi_readl(spfi, SPFI_INTERRUPT_STATUS);
  if (status & SPFI_INTERRUPT_SDFUL)
   break;
  spfi_writel(spfi, buf[count], SPFI_TX_8BIT_VALID_DATA);
  count++;
 }

 return count;
}
