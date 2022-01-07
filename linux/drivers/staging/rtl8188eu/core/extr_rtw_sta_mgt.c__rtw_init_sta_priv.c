
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sta_priv {int auth_to; int assoc_to; int expire_to; int max_num_sta; scalar_t__ auth_list_cnt; scalar_t__ asoc_list_cnt; int auth_list_lock; int asoc_list_lock; int auth_list; int asoc_list; scalar_t__ tim_bitmap; scalar_t__ sta_dz_bitmap; int free_sta_queue; int * sta_hash; scalar_t__ pstainfo_buf; int wakeup_q; int sleep_q; scalar_t__ asoc_sta_count; int sta_hash_lock; scalar_t__ pallocated_stainfo_buf; } ;
struct sta_info {int list; } ;
typedef int s32 ;


 int INIT_LIST_HEAD (int *) ;
 int NUM_STA ;
 int _FAIL ;
 int _SUCCESS ;
 int _rtw_init_queue (int *) ;
 int _rtw_init_stainfo (struct sta_info*) ;
 int get_list_head (int *) ;
 int list_add_tail (int *,int ) ;
 int spin_lock_init (int *) ;
 scalar_t__ vzalloc (int) ;

u32 _rtw_init_sta_priv(struct sta_priv *pstapriv)
{
 struct sta_info *psta;
 s32 i;

 pstapriv->pallocated_stainfo_buf = vzalloc(sizeof(struct sta_info) * NUM_STA + 4);

 if (!pstapriv->pallocated_stainfo_buf)
  return _FAIL;

 pstapriv->pstainfo_buf = pstapriv->pallocated_stainfo_buf + 4 -
  ((size_t)(pstapriv->pallocated_stainfo_buf) & 3);

 _rtw_init_queue(&pstapriv->free_sta_queue);

 spin_lock_init(&pstapriv->sta_hash_lock);

 pstapriv->asoc_sta_count = 0;
 _rtw_init_queue(&pstapriv->sleep_q);
 _rtw_init_queue(&pstapriv->wakeup_q);

 psta = (struct sta_info *)(pstapriv->pstainfo_buf);

 for (i = 0; i < NUM_STA; i++) {
  _rtw_init_stainfo(psta);

  INIT_LIST_HEAD(&pstapriv->sta_hash[i]);

  list_add_tail(&psta->list, get_list_head(&pstapriv->free_sta_queue));

  psta++;
 }
 return _SUCCESS;
}
