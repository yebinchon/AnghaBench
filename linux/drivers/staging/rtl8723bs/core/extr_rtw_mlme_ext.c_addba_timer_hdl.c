
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct ht_priv {int candidate_tid_bitmap; scalar_t__ ampdu_enable; scalar_t__ ht_option; } ;
struct sta_info {struct ht_priv htpriv; } ;


 int addba_retry_timer ;
 struct sta_info* from_timer (int ,struct timer_list*,int ) ;
 struct sta_info* psta ;

void addba_timer_hdl(struct timer_list *t)
{
 struct sta_info *psta = from_timer(psta, t, addba_retry_timer);
 struct ht_priv *phtpriv;

 if (!psta)
  return;

 phtpriv = &psta->htpriv;

 if (phtpriv->ht_option && phtpriv->ampdu_enable) {
  if (phtpriv->candidate_tid_bitmap)
   phtpriv->candidate_tid_bitmap = 0x0;

 }
}
