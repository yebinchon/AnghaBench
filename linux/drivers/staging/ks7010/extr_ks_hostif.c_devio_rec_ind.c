
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {unsigned char** dev_data; unsigned int* dev_size; int dev_read_lock; int devread_wait; int rec_count; int event_count; int is_device_open; } ;


 size_t DEVICE_STOCK_COUNT ;
 int atomic_inc (int *) ;
 size_t atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void devio_rec_ind(struct ks_wlan_private *priv, unsigned char *p,
     unsigned int size)
{
 if (!priv->is_device_open)
  return;

 spin_lock(&priv->dev_read_lock);
 priv->dev_data[atomic_read(&priv->rec_count)] = p;
 priv->dev_size[atomic_read(&priv->rec_count)] = size;

 if (atomic_read(&priv->event_count) != DEVICE_STOCK_COUNT) {

  atomic_inc(&priv->event_count);
 }
 atomic_inc(&priv->rec_count);
 if (atomic_read(&priv->rec_count) == DEVICE_STOCK_COUNT)
  atomic_set(&priv->rec_count, 0);

 wake_up_interruptible_all(&priv->devread_wait);

 spin_unlock(&priv->dev_read_lock);
}
