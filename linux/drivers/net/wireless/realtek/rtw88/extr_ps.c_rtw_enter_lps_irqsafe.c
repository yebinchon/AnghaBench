
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_vif {int in_lps; } ;
struct rtw_lps_conf {struct rtw_vif* rtwvif; int mode; } ;
struct rtw_dev {int lps_work; int hw; struct rtw_lps_conf lps_conf; } ;


 int RTW_MODE_LPS ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;

void rtw_enter_lps_irqsafe(struct rtw_dev *rtwdev, struct rtw_vif *rtwvif)
{
 struct rtw_lps_conf *conf = &rtwdev->lps_conf;

 if (rtwvif->in_lps)
  return;

 conf->mode = RTW_MODE_LPS;
 conf->rtwvif = rtwvif;
 rtwvif->in_lps = 1;

 ieee80211_queue_delayed_work(rtwdev->hw, &rtwdev->lps_work, 0);
}
