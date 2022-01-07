
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int bpairwise_key_installed; scalar_t__ keep_alive_trycnt; scalar_t__ under_exist_checking; scalar_t__ ht_20mhz_set; scalar_t__ no_ht_set; scalar_t__ no_ht_gf_set; scalar_t__ no_short_preamble_set; scalar_t__ no_short_slot_time_set; scalar_t__ nonerp_set; scalar_t__ capability; scalar_t__ flags; scalar_t__ expire_to; int auth_list; int asoc_list; int sta_recvpriv; int sta_xmitpriv; scalar_t__ sleepq_len; int sleep_q; int hash_list; int list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int _rtw_init_queue (int *) ;
 int _rtw_init_sta_recv_priv (int *) ;
 int _rtw_init_sta_xmit_priv (int *) ;
 int memset (int *,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void _rtw_init_stainfo(struct sta_info *psta)
{
 memset((u8 *)psta, 0, sizeof(struct sta_info));

 spin_lock_init(&psta->lock);
 INIT_LIST_HEAD(&psta->list);
 INIT_LIST_HEAD(&psta->hash_list);
 _rtw_init_queue(&psta->sleep_q);
 psta->sleepq_len = 0;

 _rtw_init_sta_xmit_priv(&psta->sta_xmitpriv);
 _rtw_init_sta_recv_priv(&psta->sta_recvpriv);
}
