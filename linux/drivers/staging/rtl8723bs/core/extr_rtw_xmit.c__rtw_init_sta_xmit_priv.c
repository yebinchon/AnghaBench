
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_xmit_priv {int apsd; int legacy_dz; int vo_q; int vi_q; int bk_q; int be_q; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int _init_txservq (int *) ;
 int memset (unsigned char*,int ,int) ;
 int spin_lock_init (int *) ;

void _rtw_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv)
{
 memset((unsigned char *)psta_xmitpriv, 0, sizeof(struct sta_xmit_priv));

 spin_lock_init(&psta_xmitpriv->lock);




 _init_txservq(&psta_xmitpriv->be_q);
 _init_txservq(&psta_xmitpriv->bk_q);
 _init_txservq(&psta_xmitpriv->vi_q);
 _init_txservq(&psta_xmitpriv->vo_q);
 INIT_LIST_HEAD(&psta_xmitpriv->legacy_dz);
 INIT_LIST_HEAD(&psta_xmitpriv->apsd);
}
