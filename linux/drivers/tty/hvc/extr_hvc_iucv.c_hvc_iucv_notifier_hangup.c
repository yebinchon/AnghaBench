
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {int dummy; } ;
struct hvc_iucv_private {scalar_t__ iucv_state; int lock; int tty_state; } ;


 scalar_t__ IUCV_SEVERED ;
 int TTY_CLOSED ;
 int flush_sndbuf_sync (struct hvc_iucv_private*) ;
 int hvc_iucv_cleanup (struct hvc_iucv_private*) ;
 struct hvc_iucv_private* hvc_iucv_get_private (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void hvc_iucv_notifier_hangup(struct hvc_struct *hp, int id)
{
 struct hvc_iucv_private *priv;

 priv = hvc_iucv_get_private(id);
 if (!priv)
  return;

 flush_sndbuf_sync(priv);

 spin_lock_bh(&priv->lock);







 priv->tty_state = TTY_CLOSED;

 if (priv->iucv_state == IUCV_SEVERED)
  hvc_iucv_cleanup(priv);
 spin_unlock_bh(&priv->lock);
}
