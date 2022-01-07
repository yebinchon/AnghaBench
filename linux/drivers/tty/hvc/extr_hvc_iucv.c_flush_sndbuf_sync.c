
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_iucv_private {int sndbuf_waitq; int lock; int tty_outqueue; int sndbuf_work; } ;


 int HZ ;
 int cancel_delayed_work_sync (int *) ;
 int hvc_iucv_send (struct hvc_iucv_private*) ;
 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tty_outqueue_empty (struct hvc_iucv_private*) ;
 int wait_event_timeout (int ,int ,int) ;

__attribute__((used)) static void flush_sndbuf_sync(struct hvc_iucv_private *priv)
{
 int sync_wait;

 cancel_delayed_work_sync(&priv->sndbuf_work);

 spin_lock_bh(&priv->lock);
 hvc_iucv_send(priv);
 sync_wait = !list_empty(&priv->tty_outqueue);
 spin_unlock_bh(&priv->lock);

 if (sync_wait)
  wait_event_timeout(priv->sndbuf_waitq,
       tty_outqueue_empty(priv), HZ/10);
}
