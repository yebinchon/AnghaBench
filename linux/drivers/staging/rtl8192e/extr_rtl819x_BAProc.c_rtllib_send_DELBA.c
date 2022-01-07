
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct rtllib_device {int dev; } ;
struct ba_record {int dummy; } ;
typedef enum tr_select { ____Placeholder_tr_select } tr_select ;


 int netdev_dbg (int ,char*) ;
 struct sk_buff* rtllib_DELBA (struct rtllib_device*,int *,struct ba_record*,int,int ) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct rtllib_device*) ;

__attribute__((used)) static void rtllib_send_DELBA(struct rtllib_device *ieee, u8 *dst,
         struct ba_record *pBA, enum tr_select TxRxSelect,
         u16 ReasonCode)
{
 struct sk_buff *skb;

 skb = rtllib_DELBA(ieee, dst, pBA, TxRxSelect, ReasonCode);
 if (skb)
  softmac_mgmt_xmit(skb, ieee);
 else
  netdev_dbg(ieee->dev, "Failed to generate DELBA packet.\n");
}
