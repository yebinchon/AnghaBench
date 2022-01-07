
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct wl1271 {int sg_enabled; int hw_pg_ver; int num_tx_desc; int mbox_size; void* priv; int freezable_wq; int * aggr_buf; int dummy_packet; int * fwlog; void* mbox; void* buffer_32; void* aggr_buf_size; int nvs_loading_complete; int flush_mutex; int mutex; int fw_type; int state; int wl_lock; int ** tx_frames; struct wl1271* tx_frames_map; int links_map; scalar_t__ fwlog_size; scalar_t__ active_link_count; scalar_t__ active_sta_count; int system_hlid; scalar_t__ quirks; scalar_t__ ap_fw_ps_map; scalar_t__ ap_ps_map; scalar_t__ recovery_count; int sleep_auth; scalar_t__ flags; int channel_type; int band; int power_level; scalar_t__ rx_counter; scalar_t__ channel; int tx_watchdog_work; int roc_complete_work; int scan_complete_work; int recovery_work; int tx_work; int netstack_work; int deferred_tx_queue; int deferred_rx_queue; TYPE_1__* links; struct ieee80211_hw* hw; int wlvif_list; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_2__ {int * tx_queue; } ;


 int ENOMEM ;
 struct ieee80211_hw* ERR_PTR (int) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int NL80211_BAND_2GHZ ;
 int NL80211_CHAN_NO_HT ;
 int NUM_TX_QUEUES ;
 int WL1271_DEFAULT_POWER_LEVEL ;
 int WL1271_PSM_ILLEGAL ;
 int WL12XX_FW_TYPE_NONE ;
 int WL12XX_SYSTEM_HLID ;
 int WLCORE_MAX_LINKS ;
 int WLCORE_STATE_OFF ;
 scalar_t__ __get_free_pages (int,unsigned int) ;
 int __set_bit (int ,int ) ;
 int create_freezable_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int dev_kfree_skb (int ) ;
 int free_page (unsigned long) ;
 int free_pages (unsigned long,unsigned int) ;
 unsigned int get_order (void*) ;
 scalar_t__ get_zeroed_page (int) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int init_completion (int *) ;
 int kfree (void*) ;
 void* kmalloc (int,int) ;
 void* kzalloc (size_t,int) ;
 int memset (struct wl1271*,int ,int) ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int wl1271_debugfs_exit (struct wl1271*) ;
 int wl1271_error (char*) ;
 int wl1271_netstack_work ;
 int wl1271_ops ;
 int wl1271_recovery_work ;
 int wl1271_scan_complete_work ;
 int wl1271_tx_work ;
 int wl12xx_alloc_dummy_packet (struct wl1271*) ;
 int wl12xx_tx_watchdog_work ;
 int wlcore_roc_complete_work ;

struct ieee80211_hw *wlcore_alloc_hw(size_t priv_size, u32 aggr_buf_size,
         u32 mbox_size)
{
 struct ieee80211_hw *hw;
 struct wl1271 *wl;
 int i, j, ret;
 unsigned int order;

 hw = ieee80211_alloc_hw(sizeof(*wl), &wl1271_ops);
 if (!hw) {
  wl1271_error("could not alloc ieee80211_hw");
  ret = -ENOMEM;
  goto err_hw_alloc;
 }

 wl = hw->priv;
 memset(wl, 0, sizeof(*wl));

 wl->priv = kzalloc(priv_size, GFP_KERNEL);
 if (!wl->priv) {
  wl1271_error("could not alloc wl priv");
  ret = -ENOMEM;
  goto err_priv_alloc;
 }

 INIT_LIST_HEAD(&wl->wlvif_list);

 wl->hw = hw;





 for (i = 0; i < NUM_TX_QUEUES; i++)
  for (j = 0; j < WLCORE_MAX_LINKS; j++)
   skb_queue_head_init(&wl->links[j].tx_queue[i]);

 skb_queue_head_init(&wl->deferred_rx_queue);
 skb_queue_head_init(&wl->deferred_tx_queue);

 INIT_WORK(&wl->netstack_work, wl1271_netstack_work);
 INIT_WORK(&wl->tx_work, wl1271_tx_work);
 INIT_WORK(&wl->recovery_work, wl1271_recovery_work);
 INIT_DELAYED_WORK(&wl->scan_complete_work, wl1271_scan_complete_work);
 INIT_DELAYED_WORK(&wl->roc_complete_work, wlcore_roc_complete_work);
 INIT_DELAYED_WORK(&wl->tx_watchdog_work, wl12xx_tx_watchdog_work);

 wl->freezable_wq = create_freezable_workqueue("wl12xx_wq");
 if (!wl->freezable_wq) {
  ret = -ENOMEM;
  goto err_hw;
 }

 wl->channel = 0;
 wl->rx_counter = 0;
 wl->power_level = WL1271_DEFAULT_POWER_LEVEL;
 wl->band = NL80211_BAND_2GHZ;
 wl->channel_type = NL80211_CHAN_NO_HT;
 wl->flags = 0;
 wl->sg_enabled = 1;
 wl->sleep_auth = WL1271_PSM_ILLEGAL;
 wl->recovery_count = 0;
 wl->hw_pg_ver = -1;
 wl->ap_ps_map = 0;
 wl->ap_fw_ps_map = 0;
 wl->quirks = 0;
 wl->system_hlid = WL12XX_SYSTEM_HLID;
 wl->active_sta_count = 0;
 wl->active_link_count = 0;
 wl->fwlog_size = 0;


 __set_bit(WL12XX_SYSTEM_HLID, wl->links_map);

 memset(wl->tx_frames_map, 0, sizeof(wl->tx_frames_map));
 for (i = 0; i < wl->num_tx_desc; i++)
  wl->tx_frames[i] = ((void*)0);

 spin_lock_init(&wl->wl_lock);

 wl->state = WLCORE_STATE_OFF;
 wl->fw_type = WL12XX_FW_TYPE_NONE;
 mutex_init(&wl->mutex);
 mutex_init(&wl->flush_mutex);
 init_completion(&wl->nvs_loading_complete);

 order = get_order(aggr_buf_size);
 wl->aggr_buf = (u8 *)__get_free_pages(GFP_KERNEL, order);
 if (!wl->aggr_buf) {
  ret = -ENOMEM;
  goto err_wq;
 }
 wl->aggr_buf_size = aggr_buf_size;

 wl->dummy_packet = wl12xx_alloc_dummy_packet(wl);
 if (!wl->dummy_packet) {
  ret = -ENOMEM;
  goto err_aggr;
 }


 wl->fwlog = (u8 *)get_zeroed_page(GFP_KERNEL);
 if (!wl->fwlog) {
  ret = -ENOMEM;
  goto err_dummy_packet;
 }

 wl->mbox_size = mbox_size;
 wl->mbox = kmalloc(wl->mbox_size, GFP_KERNEL | GFP_DMA);
 if (!wl->mbox) {
  ret = -ENOMEM;
  goto err_fwlog;
 }

 wl->buffer_32 = kmalloc(sizeof(*wl->buffer_32), GFP_KERNEL);
 if (!wl->buffer_32) {
  ret = -ENOMEM;
  goto err_mbox;
 }

 return hw;

err_mbox:
 kfree(wl->mbox);

err_fwlog:
 free_page((unsigned long)wl->fwlog);

err_dummy_packet:
 dev_kfree_skb(wl->dummy_packet);

err_aggr:
 free_pages((unsigned long)wl->aggr_buf, order);

err_wq:
 destroy_workqueue(wl->freezable_wq);

err_hw:
 wl1271_debugfs_exit(wl);
 kfree(wl->priv);

err_priv_alloc:
 ieee80211_free_hw(hw);

err_hw_alloc:

 return ERR_PTR(ret);
}
