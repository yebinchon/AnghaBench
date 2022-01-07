
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int priority; } ;



__attribute__((used)) static int wme_downgrade_ac(struct sk_buff *skb)
{
 switch (skb->priority) {
 case 6:
 case 7:
  skb->priority = 5;
  return 0;
 case 4:
 case 5:
  skb->priority = 3;
  return 0;
 case 0:
 case 3:
  skb->priority = 1;
  return 0;
 default:
  return -1;
 }
}
