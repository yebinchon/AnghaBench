
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct img_spfi {int dummy; } ;


 int SPFI_INTERRUPT_CLEAR ;
 int SPFI_INTERRUPT_GDEX8BIT ;
 int SPFI_INTERRUPT_STATUS ;
 int SPFI_RX_8BIT_VALID_DATA ;
 void* spfi_readl (struct img_spfi*,int ) ;
 int spfi_writel (struct img_spfi*,int,int ) ;

__attribute__((used)) static unsigned int spfi_pio_read8(struct img_spfi *spfi, u8 *buf,
       unsigned int max)
{
 unsigned int count = 0;
 u32 status;

 while (count < max) {
  spfi_writel(spfi, SPFI_INTERRUPT_GDEX8BIT,
       SPFI_INTERRUPT_CLEAR);
  status = spfi_readl(spfi, SPFI_INTERRUPT_STATUS);
  if (!(status & SPFI_INTERRUPT_GDEX8BIT))
   break;
  buf[count] = spfi_readl(spfi, SPFI_RX_8BIT_VALID_DATA);
  count++;
 }

 return count;
}
