
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nfcmrvl_private {struct nci_uart* drv_data; } ;
struct TYPE_2__ {int (* send ) (struct nci_uart*,struct sk_buff*) ;} ;
struct nci_uart {TYPE_1__ ops; } ;


 int stub1 (struct nci_uart*,struct sk_buff*) ;

__attribute__((used)) static int nfcmrvl_uart_nci_send(struct nfcmrvl_private *priv,
     struct sk_buff *skb)
{
 struct nci_uart *nu = priv->drv_data;

 return nu->ops.send(nu, skb);
}
