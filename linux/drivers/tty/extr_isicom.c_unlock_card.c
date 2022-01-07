
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isi_board {int flags; int card_lock; } ;


 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void unlock_card(struct isi_board *card)
{
 spin_unlock_irqrestore(&card->card_lock, card->flags);
}
