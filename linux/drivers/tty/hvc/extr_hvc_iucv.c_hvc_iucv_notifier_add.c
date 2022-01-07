
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {int dummy; } ;
struct hvc_iucv_private {int lock; int tty_state; } ;


 int TTY_OPENED ;
 struct hvc_iucv_private* hvc_iucv_get_private (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int hvc_iucv_notifier_add(struct hvc_struct *hp, int id)
{
 struct hvc_iucv_private *priv;

 priv = hvc_iucv_get_private(id);
 if (!priv)
  return 0;

 spin_lock_bh(&priv->lock);
 priv->tty_state = TTY_OPENED;
 spin_unlock_bh(&priv->lock);

 return 0;
}
