
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlr_net_priv {int tx_stnid; } ;
struct sk_buff {int data; } ;
struct nlm_fmn_msg {int dummy; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct xlr_net_priv* netdev_priv (struct net_device*) ;
 int nlm_cop2_disable_irqrestore (int ) ;
 int nlm_cop2_enable_irqsave () ;
 int nlm_fmn_send (int,int ,int ,struct nlm_fmn_msg*) ;
 int virt_to_phys (int ) ;
 int xlr_make_tx_desc (struct nlm_fmn_msg*,int ,struct sk_buff*) ;

__attribute__((used)) static netdev_tx_t xlr_net_start_xmit(struct sk_buff *skb,
          struct net_device *ndev)
{
 struct nlm_fmn_msg msg;
 struct xlr_net_priv *priv = netdev_priv(ndev);
 int ret;
 u32 flags;

 xlr_make_tx_desc(&msg, virt_to_phys(skb->data), skb);
 flags = nlm_cop2_enable_irqsave();
 ret = nlm_fmn_send(2, 0, priv->tx_stnid, &msg);
 nlm_cop2_disable_irqrestore(flags);
 if (ret)
  dev_kfree_skb_any(skb);
 return NETDEV_TX_OK;
}
