
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclades_port {struct cyclades_card* card; } ;
struct cyclades_card {int card_lock; } ;


 int CyRTPR ;
 int cy_is_Z (struct cyclades_card*) ;
 int cyy_writeb (struct cyclades_port*,int ,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int set_timeout(struct cyclades_port *info, unsigned long value)
{
 struct cyclades_card *card = info->card;
 unsigned long flags;

 if (!cy_is_Z(card)) {
  spin_lock_irqsave(&card->card_lock, flags);
  cyy_writeb(info, CyRTPR, value & 0xff);
  spin_unlock_irqrestore(&card->card_lock, flags);
 }
 return 0;
}
