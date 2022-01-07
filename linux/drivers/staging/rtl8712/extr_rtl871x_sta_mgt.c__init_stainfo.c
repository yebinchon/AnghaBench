
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int auth_list; int asoc_list; int sta_recvpriv; int sta_xmitpriv; int hash_list; int list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int _r8712_init_sta_recv_priv (int *) ;
 int _r8712_init_sta_xmit_priv (int *) ;
 int memset (int *,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void _init_stainfo(struct sta_info *psta)
{
 memset((u8 *)psta, 0, sizeof(struct sta_info));
 spin_lock_init(&psta->lock);
 INIT_LIST_HEAD(&psta->list);
 INIT_LIST_HEAD(&psta->hash_list);
 _r8712_init_sta_xmit_priv(&psta->sta_xmitpriv);
 _r8712_init_sta_recv_priv(&psta->sta_recvpriv);
 INIT_LIST_HEAD(&psta->asoc_list);
 INIT_LIST_HEAD(&psta->auth_list);
}
