
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ipw_tty {int dummy; } ;
struct ipw_network {int ras_control_lines; int close_lock; int lock; int * ppp_channel; struct ipw_tty*** associated_ttys; } ;


 unsigned int IPW_CHANNEL_RAS ;
 int IPW_CONTROL_LINE_DCD ;
 int MAX_ASSOCIATED_TTYS ;
 struct sk_buff* ipw_packet_received_skb (unsigned char*,unsigned int) ;
 scalar_t__ ipwireless_tty_is_modem (struct ipw_tty*) ;
 int ipwireless_tty_received (struct ipw_tty*,unsigned char*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ppp_input (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ipwireless_network_packet_received(struct ipw_network *network,
     unsigned int channel_idx,
     unsigned char *data,
     unsigned int length)
{
 int i;
 unsigned long flags;

 for (i = 0; i < MAX_ASSOCIATED_TTYS; i++) {
  struct ipw_tty *tty = network->associated_ttys[channel_idx][i];

  if (!tty)
   continue;







  if (channel_idx == IPW_CHANNEL_RAS
    && (network->ras_control_lines &
     IPW_CONTROL_LINE_DCD) != 0
    && ipwireless_tty_is_modem(tty)) {





   mutex_lock(&network->close_lock);
   spin_lock_irqsave(&network->lock, flags);
   if (network->ppp_channel != ((void*)0)) {
    struct sk_buff *skb;

    spin_unlock_irqrestore(&network->lock,
      flags);


    skb = ipw_packet_received_skb(data, length);
    if (skb)
     ppp_input(network->ppp_channel, skb);
   } else
    spin_unlock_irqrestore(&network->lock,
      flags);
   mutex_unlock(&network->close_lock);
  }

  else
   ipwireless_tty_received(tty, data, length);
 }
}
