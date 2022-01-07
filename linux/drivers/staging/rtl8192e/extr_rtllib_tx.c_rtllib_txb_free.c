
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtllib_txb {int dummy; } ;


 int kfree (struct rtllib_txb*) ;
 scalar_t__ unlikely (int) ;

void rtllib_txb_free(struct rtllib_txb *txb)
{
 if (unlikely(!txb))
  return;
 kfree(txb);
}
