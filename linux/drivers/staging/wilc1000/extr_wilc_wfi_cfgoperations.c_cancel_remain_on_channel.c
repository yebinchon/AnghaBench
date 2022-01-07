
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct wireless_dev {int netdev; } ;
struct wiphy {int dummy; } ;
struct TYPE_2__ {scalar_t__ listen_cookie; } ;
struct wilc_priv {TYPE_1__ remain_on_ch_params; } ;
struct wilc_vif {struct wilc_priv priv; } ;


 int ENOENT ;
 struct wilc_vif* netdev_priv (int ) ;
 int wilc_listen_state_expired (struct wilc_vif*,scalar_t__) ;

__attribute__((used)) static int cancel_remain_on_channel(struct wiphy *wiphy,
        struct wireless_dev *wdev,
        u64 cookie)
{
 struct wilc_vif *vif = netdev_priv(wdev->netdev);
 struct wilc_priv *priv = &vif->priv;

 if (cookie != priv->remain_on_ch_params.listen_cookie)
  return -ENOENT;

 return wilc_listen_state_expired(vif, cookie);
}
