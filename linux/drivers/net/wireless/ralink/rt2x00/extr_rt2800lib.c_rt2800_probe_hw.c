
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int watchdog_disabled; int watchdog_interval; } ;
struct rt2x00_dev {int rssi_offset; TYPE_1__ link; int cap_flags; } ;


 int CAPABILITY_CONTROL_FILTERS ;
 int CAPABILITY_CONTROL_FILTER_PSPOLL ;
 int CAPABILITY_HW_CRYPTO ;
 int CAPABILITY_LINK_TUNING ;
 int CAPABILITY_PRE_TBTT_INTERRUPT ;
 int CAPABILITY_RESTART_HW ;
 int DEFAULT_RSSI_OFFSET ;
 int GPIO_CTRL ;
 int GPIO_CTRL_DIR2 ;
 int REQUIRE_DMA ;
 int REQUIRE_FIRMWARE ;
 int REQUIRE_HT_TX_DESC ;
 int REQUIRE_L2PAD ;
 int REQUIRE_PS_AUTOWAKE ;
 int REQUIRE_TASKLET_CONTEXT ;
 int REQUIRE_TXSTATUS_FIFO ;
 int __set_bit (int ,int *) ;
 scalar_t__ modparam_watchdog ;
 int msecs_to_jiffies (int) ;
 int rt2800_hwcrypt_disabled (struct rt2x00_dev*) ;
 int rt2800_init_eeprom (struct rt2x00_dev*) ;
 int rt2800_probe_hw_mode (struct rt2x00_dev*) ;
 int rt2800_probe_rt (struct rt2x00_dev*) ;
 int rt2800_register_read (struct rt2x00_dev*,int ) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2800_validate_eeprom (struct rt2x00_dev*) ;
 int rt2x00_is_soc (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_is_usb (struct rt2x00_dev*) ;
 int rt2x00_set_field32 (int *,int ,int) ;

int rt2800_probe_hw(struct rt2x00_dev *rt2x00dev)
{
 int retval;
 u32 reg;

 retval = rt2800_probe_rt(rt2x00dev);
 if (retval)
  return retval;




 retval = rt2800_validate_eeprom(rt2x00dev);
 if (retval)
  return retval;

 retval = rt2800_init_eeprom(rt2x00dev);
 if (retval)
  return retval;





 reg = rt2800_register_read(rt2x00dev, GPIO_CTRL);
 rt2x00_set_field32(&reg, GPIO_CTRL_DIR2, 1);
 rt2800_register_write(rt2x00dev, GPIO_CTRL, reg);




 retval = rt2800_probe_hw_mode(rt2x00dev);
 if (retval)
  return retval;




 __set_bit(CAPABILITY_CONTROL_FILTERS, &rt2x00dev->cap_flags);
 __set_bit(CAPABILITY_CONTROL_FILTER_PSPOLL, &rt2x00dev->cap_flags);
 if (!rt2x00_is_usb(rt2x00dev))
  __set_bit(CAPABILITY_PRE_TBTT_INTERRUPT, &rt2x00dev->cap_flags);




 if (!rt2x00_is_soc(rt2x00dev))
  __set_bit(REQUIRE_FIRMWARE, &rt2x00dev->cap_flags);
 __set_bit(REQUIRE_L2PAD, &rt2x00dev->cap_flags);
 __set_bit(REQUIRE_TXSTATUS_FIFO, &rt2x00dev->cap_flags);
 if (!rt2800_hwcrypt_disabled(rt2x00dev))
  __set_bit(CAPABILITY_HW_CRYPTO, &rt2x00dev->cap_flags);
 __set_bit(CAPABILITY_LINK_TUNING, &rt2x00dev->cap_flags);
 __set_bit(REQUIRE_HT_TX_DESC, &rt2x00dev->cap_flags);
 if (rt2x00_is_usb(rt2x00dev))
  __set_bit(REQUIRE_PS_AUTOWAKE, &rt2x00dev->cap_flags);
 else {
  __set_bit(REQUIRE_DMA, &rt2x00dev->cap_flags);
  __set_bit(REQUIRE_TASKLET_CONTEXT, &rt2x00dev->cap_flags);
 }

 if (modparam_watchdog) {
  __set_bit(CAPABILITY_RESTART_HW, &rt2x00dev->cap_flags);
  rt2x00dev->link.watchdog_interval = msecs_to_jiffies(100);
 } else {
  rt2x00dev->link.watchdog_disabled = 1;
 }




 rt2x00dev->rssi_offset = DEFAULT_RSSI_OFFSET;

 return 0;
}
