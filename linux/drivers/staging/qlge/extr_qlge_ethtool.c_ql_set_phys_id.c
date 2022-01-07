
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int led_config; } ;
struct net_device {int dummy; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int EINVAL ;
 int EIO ;


 int QL_LED_BLINK ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int ql_mb_get_led_cfg (struct ql_adapter*) ;
 int ql_mb_set_led_cfg (struct ql_adapter*,int ) ;

__attribute__((used)) static int ql_set_phys_id(struct net_device *ndev,
     enum ethtool_phys_id_state state)

{
 struct ql_adapter *qdev = netdev_priv(ndev);

 switch (state) {
 case 129:

  if (ql_mb_get_led_cfg(qdev))
   return -EIO;


  ql_mb_set_led_cfg(qdev, QL_LED_BLINK);
  return 0;

 case 128:

  if (ql_mb_set_led_cfg(qdev, qdev->led_config))
   return -EIO;
  return 0;

 default:
  return -EINVAL;
 }
}
