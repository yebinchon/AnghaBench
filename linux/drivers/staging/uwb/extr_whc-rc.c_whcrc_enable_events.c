
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct whcrc {int irq_lock; scalar_t__ rc_base; int evt_dma_buf; } ;


 scalar_t__ URCCMD ;
 int URCCMD_ACTIVE ;
 int URCCMD_EARV ;
 scalar_t__ URCEVTADDR ;
 int le_readl (scalar_t__) ;
 int le_writel (int,scalar_t__) ;
 int le_writeq (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static
void whcrc_enable_events(struct whcrc *whcrc)
{
 u32 urccmd;

 le_writeq(whcrc->evt_dma_buf, whcrc->rc_base + URCEVTADDR);

 spin_lock(&whcrc->irq_lock);
 urccmd = le_readl(whcrc->rc_base + URCCMD) & ~URCCMD_ACTIVE;
 le_writel(urccmd | URCCMD_EARV, whcrc->rc_base + URCCMD);
 spin_unlock(&whcrc->irq_lock);
}
