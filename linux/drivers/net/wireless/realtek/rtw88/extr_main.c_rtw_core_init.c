
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int current_channel; int rcr; int tx_power_mutex; } ;
struct TYPE_8__ {int total_cam_num; } ;
struct rtw_coex {int wait; int mutex; int queue; int defreeze_work; int bt_reenable_work; int bt_relink_work; } ;
struct TYPE_7__ {int q_lock; int queue; int purge_timer; } ;
struct TYPE_6__ {int lock; } ;
struct rtw_dev {TYPE_5__* chip; TYPE_4__ hal; int mutex; int mac_id_map; TYPE_3__ sec; struct rtw_coex coex; TYPE_2__ tx_report; TYPE_1__ h2c; int rf_lock; int dm_lock; int c2h_queue; int c2h_work; int lps_work; int watch_dog_work; int rsvd_page_list; } ;
struct TYPE_10__ {int fw_name; } ;


 int BIT_AB ;
 int BIT_AM ;
 int BIT_APM ;
 int BIT_APP_FCS ;
 int BIT_APP_ICV ;
 int BIT_APP_MIC ;
 int BIT_APP_PHYSTS ;
 int BIT_HTC_LOC_CTRL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int RSVD_BEACON ;
 int RTW_BC_MC_MACID ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_add_rsvd_page (struct rtw_dev*,int ,int) ;
 int rtw_c2h_work ;
 int rtw_coex_bt_reenable_work ;
 int rtw_coex_bt_relink_work ;
 int rtw_coex_defreeze_work ;
 int rtw_load_firmware (struct rtw_dev*,int ) ;
 int rtw_lps_work ;
 int rtw_tx_report_purge_timer ;
 int rtw_warn (struct rtw_dev*,char*) ;
 int rtw_watch_dog_work ;
 int set_bit (int ,int ) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int rtw_core_init(struct rtw_dev *rtwdev)
{
 struct rtw_coex *coex = &rtwdev->coex;
 int ret;

 INIT_LIST_HEAD(&rtwdev->rsvd_page_list);

 timer_setup(&rtwdev->tx_report.purge_timer,
      rtw_tx_report_purge_timer, 0);

 INIT_DELAYED_WORK(&rtwdev->watch_dog_work, rtw_watch_dog_work);
 INIT_DELAYED_WORK(&rtwdev->lps_work, rtw_lps_work);
 INIT_DELAYED_WORK(&coex->bt_relink_work, rtw_coex_bt_relink_work);
 INIT_DELAYED_WORK(&coex->bt_reenable_work, rtw_coex_bt_reenable_work);
 INIT_DELAYED_WORK(&coex->defreeze_work, rtw_coex_defreeze_work);
 INIT_WORK(&rtwdev->c2h_work, rtw_c2h_work);
 skb_queue_head_init(&rtwdev->c2h_queue);
 skb_queue_head_init(&rtwdev->coex.queue);
 skb_queue_head_init(&rtwdev->tx_report.queue);

 spin_lock_init(&rtwdev->dm_lock);
 spin_lock_init(&rtwdev->rf_lock);
 spin_lock_init(&rtwdev->h2c.lock);
 spin_lock_init(&rtwdev->tx_report.q_lock);

 mutex_init(&rtwdev->mutex);
 mutex_init(&rtwdev->coex.mutex);
 mutex_init(&rtwdev->hal.tx_power_mutex);

 init_waitqueue_head(&rtwdev->coex.wait);

 rtwdev->sec.total_cam_num = 32;
 rtwdev->hal.current_channel = 1;
 set_bit(RTW_BC_MC_MACID, rtwdev->mac_id_map);

 mutex_lock(&rtwdev->mutex);
 rtw_add_rsvd_page(rtwdev, RSVD_BEACON, 0);
 mutex_unlock(&rtwdev->mutex);


 rtwdev->hal.rcr = BIT_APP_FCS | BIT_APP_MIC | BIT_APP_ICV |
     BIT_HTC_LOC_CTRL | BIT_APP_PHYSTS |
     BIT_AB | BIT_AM | BIT_APM;

 ret = rtw_load_firmware(rtwdev, rtwdev->chip->fw_name);
 if (ret) {
  rtw_warn(rtwdev, "no firmware loaded\n");
  return ret;
 }

 return 0;
}
