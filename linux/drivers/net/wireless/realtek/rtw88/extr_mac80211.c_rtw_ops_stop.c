
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtw_dev {int mutex; } ;
struct ieee80211_hw {struct rtw_dev* priv; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rtw_core_stop (struct rtw_dev*) ;

__attribute__((used)) static void rtw_ops_stop(struct ieee80211_hw *hw)
{
 struct rtw_dev *rtwdev = hw->priv;

 mutex_lock(&rtwdev->mutex);
 rtw_core_stop(rtwdev);
 mutex_unlock(&rtwdev->mutex);
}
