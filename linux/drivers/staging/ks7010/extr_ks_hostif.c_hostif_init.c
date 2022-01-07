
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int devread_wait; int dev_read_lock; int multicast_spin; } ;


 int hostif_aplist_init (struct ks_wlan_private*) ;
 int hostif_counters_init (struct ks_wlan_private*) ;
 int hostif_pmklist_init (struct ks_wlan_private*) ;
 int hostif_power_save_init (struct ks_wlan_private*) ;
 int hostif_sme_init (struct ks_wlan_private*) ;
 int hostif_status_init (struct ks_wlan_private*) ;
 int hostif_wpa_init (struct ks_wlan_private*) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

int hostif_init(struct ks_wlan_private *priv)
{
 hostif_aplist_init(priv);
 hostif_status_init(priv);

 spin_lock_init(&priv->multicast_spin);
 spin_lock_init(&priv->dev_read_lock);
 init_waitqueue_head(&priv->devread_wait);

 hostif_counters_init(priv);
 hostif_power_save_init(priv);
 hostif_wpa_init(priv);
 hostif_pmklist_init(priv);
 hostif_sme_init(priv);

 return 0;
}
