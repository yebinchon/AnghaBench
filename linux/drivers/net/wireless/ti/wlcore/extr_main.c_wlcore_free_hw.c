
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int fwlog_size; int hw; int * priv; int freezable_wq; int * tx_res_if; int * fw_status; int * raw_fw_status; int * nvs; int fw_type; int * fw; int aggr_buf_size; scalar_t__ aggr_buf; int dummy_packet; scalar_t__ fwlog; int * mbox; int * buffer_32; int mutex; } ;


 int WL12XX_FW_TYPE_NONE ;
 int destroy_workqueue (int ) ;
 int dev_kfree_skb (int ) ;
 int free_page (unsigned long) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int ieee80211_free_hw (int ) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfree (int *) ;
 int wl1271_debugfs_exit (struct wl1271*) ;
 int wlcore_sysfs_free (struct wl1271*) ;

int wlcore_free_hw(struct wl1271 *wl)
{

 mutex_lock(&wl->mutex);
 wl->fwlog_size = -1;
 mutex_unlock(&wl->mutex);

 wlcore_sysfs_free(wl);

 kfree(wl->buffer_32);
 kfree(wl->mbox);
 free_page((unsigned long)wl->fwlog);
 dev_kfree_skb(wl->dummy_packet);
 free_pages((unsigned long)wl->aggr_buf, get_order(wl->aggr_buf_size));

 wl1271_debugfs_exit(wl);

 vfree(wl->fw);
 wl->fw = ((void*)0);
 wl->fw_type = WL12XX_FW_TYPE_NONE;
 kfree(wl->nvs);
 wl->nvs = ((void*)0);

 kfree(wl->raw_fw_status);
 kfree(wl->fw_status);
 kfree(wl->tx_res_if);
 destroy_workqueue(wl->freezable_wq);

 kfree(wl->priv);
 ieee80211_free_hw(wl->hw);

 return 0;
}
