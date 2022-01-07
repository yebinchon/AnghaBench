
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pcmcia_socket {struct bcm63xx_pcmcia_socket* driver_data; } ;
struct TYPE_3__ {int flags; } ;
struct bcm63xx_pcmcia_socket {int card_type; int lock; TYPE_1__ requested_state; scalar_t__ card_detected; } ;
typedef TYPE_1__ socket_state_t ;


 int CARD_CARDBUS ;
 int PCMCIA_C1_REG ;
 int PCMCIA_C1_RESET_MASK ;
 int SS_RESET ;
 int pcmcia_readl (struct bcm63xx_pcmcia_socket*,int ) ;
 int pcmcia_writel (struct bcm63xx_pcmcia_socket*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bcm63xx_pcmcia_set_socket(struct pcmcia_socket *sock,
         socket_state_t *state)
{
 struct bcm63xx_pcmcia_socket *skt;
 unsigned long flags;
 u32 val;

 skt = sock->driver_data;

 spin_lock_irqsave(&skt->lock, flags);





 val = pcmcia_readl(skt, PCMCIA_C1_REG);
 if (state->flags & SS_RESET)
  val |= PCMCIA_C1_RESET_MASK;
 else
  val &= ~PCMCIA_C1_RESET_MASK;


 if (skt->card_detected && (skt->card_type & CARD_CARDBUS))
  val ^= PCMCIA_C1_RESET_MASK;

 pcmcia_writel(skt, val, PCMCIA_C1_REG);


 skt->requested_state = *state;

 spin_unlock_irqrestore(&skt->lock, flags);

 return 0;
}
