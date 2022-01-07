
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct rtllib_device {int dev; } ;
struct ba_record {int dummy; } ;


 int ACT_ADDBAREQ ;
 int COMP_DBG ;
 int RT_TRACE (int ,char*) ;
 int netdev_dbg (int ,char*) ;
 struct sk_buff* rtllib_ADDBA (struct rtllib_device*,int *,struct ba_record*,int ,int ) ;
 int softmac_mgmt_xmit (struct sk_buff*,struct rtllib_device*) ;

__attribute__((used)) static void rtllib_send_ADDBAReq(struct rtllib_device *ieee, u8 *dst,
     struct ba_record *pBA)
{
 struct sk_buff *skb;

 skb = rtllib_ADDBA(ieee, dst, pBA, 0, ACT_ADDBAREQ);

 if (skb) {
  RT_TRACE(COMP_DBG, "====>to send ADDBAREQ!!!!!\n");
  softmac_mgmt_xmit(skb, ieee);
 } else {
  netdev_dbg(ieee->dev, "Failed to generate ADDBAReq packet.\n");
 }
}
