
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8192_priv {int mutex; int wx_mutex; int irq_lock; int tx_lock; } ;


 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void rtl8192_init_priv_lock(struct r8192_priv *priv)
{
 spin_lock_init(&priv->tx_lock);
 spin_lock_init(&priv->irq_lock);
 mutex_init(&priv->wx_mutex);
 mutex_init(&priv->mutex);
}
