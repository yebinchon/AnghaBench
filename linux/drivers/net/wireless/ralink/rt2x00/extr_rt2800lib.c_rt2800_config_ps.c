
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rt2x00lib_conf {TYPE_1__* conf; } ;
struct rt2x00_dev {TYPE_3__* ops; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;
struct TYPE_6__ {TYPE_2__* lib; } ;
struct TYPE_5__ {int (* set_device_state ) (struct rt2x00_dev*,int) ;} ;
struct TYPE_4__ {int flags; int listen_interval; } ;


 int AUTOWAKEUP_CFG ;
 int AUTOWAKEUP_CFG_AUTOWAKE ;
 int AUTOWAKEUP_CFG_AUTO_LEAD_TIME ;
 int AUTOWAKEUP_CFG_TBCN_BEFORE_WAKE ;
 int IEEE80211_CONF_PS ;
 int STATE_AWAKE ;
 int STATE_SLEEP ;
 scalar_t__ rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,scalar_t__) ;
 int rt2x00_set_field32 (scalar_t__*,int ,int) ;
 int stub1 (struct rt2x00_dev*,int) ;
 int stub2 (struct rt2x00_dev*,int) ;

__attribute__((used)) static void rt2800_config_ps(struct rt2x00_dev *rt2x00dev,
        struct rt2x00lib_conf *libconf)
{
 enum dev_state state =
     (libconf->conf->flags & IEEE80211_CONF_PS) ?
  STATE_SLEEP : STATE_AWAKE;
 u32 reg;

 if (state == STATE_SLEEP) {
  rt2800_register_write(rt2x00dev, AUTOWAKEUP_CFG, 0);

  reg = rt2800_register_read(rt2x00dev, AUTOWAKEUP_CFG);
  rt2x00_set_field32(&reg, AUTOWAKEUP_CFG_AUTO_LEAD_TIME, 5);
  rt2x00_set_field32(&reg, AUTOWAKEUP_CFG_TBCN_BEFORE_WAKE,
       libconf->conf->listen_interval - 1);
  rt2x00_set_field32(&reg, AUTOWAKEUP_CFG_AUTOWAKE, 1);
  rt2800_register_write(rt2x00dev, AUTOWAKEUP_CFG, reg);

  rt2x00dev->ops->lib->set_device_state(rt2x00dev, state);
 } else {
  reg = rt2800_register_read(rt2x00dev, AUTOWAKEUP_CFG);
  rt2x00_set_field32(&reg, AUTOWAKEUP_CFG_AUTO_LEAD_TIME, 0);
  rt2x00_set_field32(&reg, AUTOWAKEUP_CFG_TBCN_BEFORE_WAKE, 0);
  rt2x00_set_field32(&reg, AUTOWAKEUP_CFG_AUTOWAKE, 0);
  rt2800_register_write(rt2x00dev, AUTOWAKEUP_CFG, reg);

  rt2x00dev->ops->lib->set_device_state(rt2x00dev, state);
 }
}
