
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtw_dev {int mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int COEX_ASSOCIATE_START ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_coex_connect_notify (struct rtw_dev*,int ) ;

__attribute__((used)) static void rtw_ops_mgd_prepare_tx(struct ieee80211_hw *hw,
       struct ieee80211_vif *vif,
       u16 duration)
{
 struct rtw_dev *rtwdev = hw->priv;

 mutex_lock(&rtwdev->mutex);
 rtw_coex_connect_notify(rtwdev, COEX_ASSOCIATE_START);
 mutex_unlock(&rtwdev->mutex);
}
