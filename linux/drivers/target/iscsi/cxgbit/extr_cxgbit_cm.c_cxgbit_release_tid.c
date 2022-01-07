
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct cxgbit_device {int dummy; } ;
struct cpl_tid_release {int dummy; } ;


 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int cxgb_mk_tid_release (struct sk_buff*,int ,int ,int ) ;
 int cxgbit_ofld_send (struct cxgbit_device*,struct sk_buff*) ;
 int roundup (int,int) ;

__attribute__((used)) static void cxgbit_release_tid(struct cxgbit_device *cdev, u32 tid)
{
 u32 len = roundup(sizeof(struct cpl_tid_release), 16);
 struct sk_buff *skb;

 skb = alloc_skb(len, GFP_ATOMIC);
 if (!skb)
  return;

 cxgb_mk_tid_release(skb, len, tid, 0);
 cxgbit_ofld_send(cdev, skb);
}
