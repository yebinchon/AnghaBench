
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct rt2x00lib_conf {TYPE_1__* conf; } ;
struct rt2x00_dev {int beacon_int; TYPE_3__* ops; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;
struct TYPE_6__ {TYPE_2__* lib; } ;
struct TYPE_5__ {int (* set_device_state ) (struct rt2x00_dev*,int) ;} ;
struct TYPE_4__ {int flags; int listen_interval; } ;


 int IEEE80211_CONF_PS ;
 int MAC_CSR18 ;
 int MAC_CSR18_AUTO_WAKE ;
 int MAC_CSR18_BEACONS_BEFORE_WAKEUP ;
 int MAC_CSR18_DELAY_AFTER_BEACON ;
 int STATE_AWAKE ;
 int STATE_SLEEP ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field16 (int *,int ,int) ;
 int stub1 (struct rt2x00_dev*,int) ;

__attribute__((used)) static void rt2500usb_config_ps(struct rt2x00_dev *rt2x00dev,
    struct rt2x00lib_conf *libconf)
{
 enum dev_state state =
     (libconf->conf->flags & IEEE80211_CONF_PS) ?
  STATE_SLEEP : STATE_AWAKE;
 u16 reg;

 if (state == STATE_SLEEP) {
  reg = rt2500usb_register_read(rt2x00dev, MAC_CSR18);
  rt2x00_set_field16(&reg, MAC_CSR18_DELAY_AFTER_BEACON,
       rt2x00dev->beacon_int - 20);
  rt2x00_set_field16(&reg, MAC_CSR18_BEACONS_BEFORE_WAKEUP,
       libconf->conf->listen_interval - 1);


  rt2x00_set_field16(&reg, MAC_CSR18_AUTO_WAKE, 0);
  rt2500usb_register_write(rt2x00dev, MAC_CSR18, reg);

  rt2x00_set_field16(&reg, MAC_CSR18_AUTO_WAKE, 1);
  rt2500usb_register_write(rt2x00dev, MAC_CSR18, reg);
 } else {
  reg = rt2500usb_register_read(rt2x00dev, MAC_CSR18);
  rt2x00_set_field16(&reg, MAC_CSR18_AUTO_WAKE, 0);
  rt2500usb_register_write(rt2x00dev, MAC_CSR18, reg);
 }

 rt2x00dev->ops->lib->set_device_state(rt2x00dev, state);
}
