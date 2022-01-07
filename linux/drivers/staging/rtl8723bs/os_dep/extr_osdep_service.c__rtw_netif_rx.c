
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
typedef int _nic_hdl ;


 int netif_rx (struct sk_buff*) ;

inline int _rtw_netif_rx(_nic_hdl ndev, struct sk_buff *skb)
{
 skb->dev = ndev;
 return netif_rx(skb);
}
