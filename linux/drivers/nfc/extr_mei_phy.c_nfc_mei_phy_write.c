
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct nfc_mei_phy {int dummy; } ;


 int MEI_DUMP_SKB_OUT (char*,struct sk_buff*) ;
 int mei_nfc_send (struct nfc_mei_phy*,int ,int ) ;

__attribute__((used)) static int nfc_mei_phy_write(void *phy_id, struct sk_buff *skb)
{
 struct nfc_mei_phy *phy = phy_id;
 int r;

 MEI_DUMP_SKB_OUT("mei frame sent", skb);

 r = mei_nfc_send(phy, skb->data, skb->len);
 if (r > 0)
  r = 0;

 return r;
}
