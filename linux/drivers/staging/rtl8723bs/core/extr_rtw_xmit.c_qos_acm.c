
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;
 int DBG_871X (char*,int) ;

u8 qos_acm(u8 acm_mask, u8 priority)
{
 switch (priority) {
 case 0:
 case 3:
  if (acm_mask & BIT(1))
   priority = 1;
  break;
 case 1:
 case 2:
  break;
 case 4:
 case 5:
  if (acm_mask & BIT(2))
   priority = 0;
  break;
 case 6:
 case 7:
  if (acm_mask & BIT(3))
   priority = 5;
  break;
 default:
  DBG_871X("qos_acm(): invalid pattrib->priority: %d!!!\n", priority);
  break;
 }

 return priority;
}
