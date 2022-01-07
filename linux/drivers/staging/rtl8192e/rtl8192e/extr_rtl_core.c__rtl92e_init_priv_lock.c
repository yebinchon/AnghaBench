
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int mutex; int rf_mutex; int wx_mutex; int ps_lock; int rf_ps_lock; int irq_th_lock; int tx_lock; } ;


 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void _rtl92e_init_priv_lock(struct r8192_priv *priv)
{
 spin_lock_init(&priv->tx_lock);
 spin_lock_init(&priv->irq_th_lock);
 spin_lock_init(&priv->rf_ps_lock);
 spin_lock_init(&priv->ps_lock);
 mutex_init(&priv->wx_mutex);
 mutex_init(&priv->rf_mutex);
 mutex_init(&priv->mutex);
}
