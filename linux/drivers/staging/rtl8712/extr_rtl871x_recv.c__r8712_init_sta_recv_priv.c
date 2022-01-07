
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_recv_priv {int defrag_q; int lock; } ;


 int _init_queue (int *) ;
 int memset (int *,int ,int) ;
 int spin_lock_init (int *) ;

void _r8712_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv)
{
 memset((u8 *)psta_recvpriv, 0, sizeof(struct sta_recv_priv));
 spin_lock_init(&psta_recvpriv->lock);
 _init_queue(&psta_recvpriv->defrag_q);
}
