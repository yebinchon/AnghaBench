
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int interrupts_enabled; scalar_t__ vaddr; } ;


 int SA5_INTR_OFF ;
 scalar_t__ SA5_REPLY_INTR_MASK_OFFSET ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void SA5_intr_mask(struct ctlr_info *h, unsigned long val)
{
 if (val) {
  h->interrupts_enabled = 1;
  writel(0, h->vaddr + SA5_REPLY_INTR_MASK_OFFSET);
  (void) readl(h->vaddr + SA5_REPLY_INTR_MASK_OFFSET);
 } else {
  h->interrupts_enabled = 0;
  writel(SA5_INTR_OFF,
   h->vaddr + SA5_REPLY_INTR_MASK_OFFSET);
  (void) readl(h->vaddr + SA5_REPLY_INTR_MASK_OFFSET);
 }
}
