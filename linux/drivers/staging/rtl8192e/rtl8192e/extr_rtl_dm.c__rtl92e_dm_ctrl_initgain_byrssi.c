
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int dig_enable_flag; scalar_t__ dig_algorithm; } ;


 scalar_t__ DIG_ALGO_BY_FALSE_ALARM ;
 scalar_t__ DIG_ALGO_BY_RSSI ;
 int _rtl92e_dm_ctrl_initgain_byrssi_driver (struct net_device*) ;
 int _rtl92e_dm_ctrl_initgain_byrssi_false_alarm (struct net_device*) ;
 TYPE_1__ dm_digtable ;

__attribute__((used)) static void _rtl92e_dm_ctrl_initgain_byrssi(struct net_device *dev)
{

 if (dm_digtable.dig_enable_flag == 0)
  return;

 if (dm_digtable.dig_algorithm == DIG_ALGO_BY_FALSE_ALARM)
  _rtl92e_dm_ctrl_initgain_byrssi_false_alarm(dev);
 else if (dm_digtable.dig_algorithm == DIG_ALGO_BY_RSSI)
  _rtl92e_dm_ctrl_initgain_byrssi_driver(dev);
 else
  return;
}
