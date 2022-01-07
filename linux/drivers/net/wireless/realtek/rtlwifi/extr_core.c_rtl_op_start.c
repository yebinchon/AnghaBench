
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int conf_mutex; } ;
struct TYPE_5__ {int watchdog_timer; } ;
struct rtl_priv {TYPE_3__ locks; TYPE_2__ works; TYPE_1__* intf_ops; int status; } ;
struct rtl_hal {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int (* adapter_start ) (struct ieee80211_hw*) ;} ;


 int RTL_STATUS_INTERFACE_START ;
 int is_hal_stop (struct rtl_hal*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct rtl_hal* rtl_hal (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_watch_dog_timer_callback (int *) ;
 int stub1 (struct ieee80211_hw*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int rtl_op_start(struct ieee80211_hw *hw)
{
 int err = 0;
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_hal *rtlhal = rtl_hal(rtl_priv(hw));

 if (!is_hal_stop(rtlhal))
  return 0;
 if (!test_bit(RTL_STATUS_INTERFACE_START, &rtlpriv->status))
  return 0;
 mutex_lock(&rtlpriv->locks.conf_mutex);
 err = rtlpriv->intf_ops->adapter_start(hw);
 if (!err)
  rtl_watch_dog_timer_callback(&rtlpriv->works.watchdog_timer);
 mutex_unlock(&rtlpriv->locks.conf_mutex);
 return err;
}
