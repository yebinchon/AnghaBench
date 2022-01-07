
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ehci_qtd {int length; void* hw_token; void** hw_buf_hi; void** hw_buf; } ;
struct ehci_hcd {int dummy; } ;
typedef int dma_addr_t ;


 void* cpu_to_hc32 (struct ehci_hcd*,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
qtd_fill(struct ehci_hcd *ehci, struct ehci_qtd *qtd, dma_addr_t buf,
    size_t len, int token, int maxpacket)
{
 int i, count;
 u64 addr = buf;


 qtd->hw_buf[0] = cpu_to_hc32(ehci, (u32)addr);
 qtd->hw_buf_hi[0] = cpu_to_hc32(ehci, (u32)(addr >> 32));
 count = 0x1000 - (buf & 0x0fff);
 if (likely (len < count))
  count = len;
 else {
  buf += 0x1000;
  buf &= ~0x0fff;


  for (i = 1; count < len && i < 5; i++) {
   addr = buf;
   qtd->hw_buf[i] = cpu_to_hc32(ehci, (u32)addr);
   qtd->hw_buf_hi[i] = cpu_to_hc32(ehci,
     (u32)(addr >> 32));
   buf += 0x1000;
   if ((count + 0x1000) < len)
    count += 0x1000;
   else
    count = len;
  }


  if (count != len)
   count -= (count % maxpacket);
 }
 qtd->hw_token = cpu_to_hc32(ehci, (count << 16) | token);
 qtd->length = count;

 return count;
}
