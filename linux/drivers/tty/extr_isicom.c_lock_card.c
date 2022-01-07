
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isi_board {unsigned long base; int flags; int card_lock; } ;


 int inw (unsigned long) ;
 int msleep (int) ;
 int pr_warn (char*,unsigned long) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int udelay (int) ;

__attribute__((used)) static int lock_card(struct isi_board *card)
{
 unsigned long base = card->base;
 unsigned int retries, a;

 for (retries = 0; retries < 10; retries++) {
  spin_lock_irqsave(&card->card_lock, card->flags);
  for (a = 0; a < 10; a++) {
   if (inw(base + 0xe) & 0x1)
    return 1;
   udelay(10);
  }
  spin_unlock_irqrestore(&card->card_lock, card->flags);
  msleep(10);
 }
 pr_warn("Failed to lock Card (0x%lx)\n", card->base);

 return 0;
}
