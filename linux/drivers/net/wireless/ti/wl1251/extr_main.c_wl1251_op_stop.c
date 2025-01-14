
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {scalar_t__ state; int scanning; int listen_int; int elp; int tx_queue_stopped; int monitor_present; int joined; int mutex; int channel; scalar_t__ rssi_thold; int power_level; scalar_t__ psm_entry_retry; int station_mode; scalar_t__ next_tx_complete; scalar_t__ rx_last_id; scalar_t__ rx_current_buffer; scalar_t__ rx_handled; scalar_t__ rx_counter; scalar_t__ data_in_count; int bss_type; int bssid; int elp_work; int tx_work; int irq_work; int hw; } ;
struct ieee80211_hw {struct wl1251* priv; } ;
struct cfg80211_scan_info {int aborted; } ;


 int DEBUG_MAC80211 ;
 int MAX_BSS_TYPE ;
 int STATION_ACTIVE_MODE ;
 int WARN_ON (int) ;
 int WL1251_DEFAULT_CHANNEL ;
 int WL1251_DEFAULT_POWER_LEVEL ;
 scalar_t__ WL1251_STATE_OFF ;
 scalar_t__ WL1251_STATE_ON ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int eth_zero_addr (int ) ;
 int ieee80211_scan_completed (int ,struct cfg80211_scan_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wl1251_debug (int ,char*) ;
 int wl1251_debugfs_reset (struct wl1251*) ;
 int wl1251_disable_interrupts (struct wl1251*) ;
 int wl1251_info (char*) ;
 int wl1251_power_off (struct wl1251*) ;
 int wl1251_tx_flush (struct wl1251*) ;

__attribute__((used)) static void wl1251_op_stop(struct ieee80211_hw *hw)
{
 struct wl1251 *wl = hw->priv;

 wl1251_info("down");

 wl1251_debug(DEBUG_MAC80211, "mac80211 stop");

 mutex_lock(&wl->mutex);

 WARN_ON(wl->state != WL1251_STATE_ON);

 if (wl->scanning) {
  struct cfg80211_scan_info info = {
   .aborted = 1,
  };

  ieee80211_scan_completed(wl->hw, &info);
  wl->scanning = 0;
 }

 wl->state = WL1251_STATE_OFF;

 wl1251_disable_interrupts(wl);

 mutex_unlock(&wl->mutex);

 cancel_work_sync(&wl->irq_work);
 cancel_work_sync(&wl->tx_work);
 cancel_delayed_work_sync(&wl->elp_work);

 mutex_lock(&wl->mutex);


 wl1251_tx_flush(wl);
 wl1251_power_off(wl);

 eth_zero_addr(wl->bssid);
 wl->listen_int = 1;
 wl->bss_type = MAX_BSS_TYPE;

 wl->data_in_count = 0;
 wl->rx_counter = 0;
 wl->rx_handled = 0;
 wl->rx_current_buffer = 0;
 wl->rx_last_id = 0;
 wl->next_tx_complete = 0;
 wl->elp = 0;
 wl->station_mode = STATION_ACTIVE_MODE;
 wl->psm_entry_retry = 0;
 wl->tx_queue_stopped = 0;
 wl->power_level = WL1251_DEFAULT_POWER_LEVEL;
 wl->rssi_thold = 0;
 wl->channel = WL1251_DEFAULT_CHANNEL;
 wl->monitor_present = 0;
 wl->joined = 0;

 wl1251_debugfs_reset(wl);

 mutex_unlock(&wl->mutex);
}
