
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct rt2x00_dev {int dummy; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int EBUSY ;
 int MAC_CSR17 ;
 int MAC_CSR17_BBP_CURR_STATE ;
 int MAC_CSR17_BBP_DESIRE_STATE ;
 int MAC_CSR17_PUT_TO_SLEEP ;
 int MAC_CSR17_RF_CURR_STATE ;
 int MAC_CSR17_RF_DESIRE_STATE ;
 int MAC_CSR17_SET_STATE ;
 unsigned int REGISTER_USB_BUSY_COUNT ;
 int STATE_AWAKE ;
 int msleep (int) ;
 scalar_t__ rt2500usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,scalar_t__) ;
 char rt2x00_get_field16 (scalar_t__,int ) ;
 int rt2x00_set_field16 (scalar_t__*,int ,int) ;

__attribute__((used)) static int rt2500usb_set_state(struct rt2x00_dev *rt2x00dev,
          enum dev_state state)
{
 u16 reg;
 u16 reg2;
 unsigned int i;
 char put_to_sleep;
 char bbp_state;
 char rf_state;

 put_to_sleep = (state != STATE_AWAKE);

 reg = 0;
 rt2x00_set_field16(&reg, MAC_CSR17_BBP_DESIRE_STATE, state);
 rt2x00_set_field16(&reg, MAC_CSR17_RF_DESIRE_STATE, state);
 rt2x00_set_field16(&reg, MAC_CSR17_PUT_TO_SLEEP, put_to_sleep);
 rt2500usb_register_write(rt2x00dev, MAC_CSR17, reg);
 rt2x00_set_field16(&reg, MAC_CSR17_SET_STATE, 1);
 rt2500usb_register_write(rt2x00dev, MAC_CSR17, reg);






 for (i = 0; i < REGISTER_USB_BUSY_COUNT; i++) {
  reg2 = rt2500usb_register_read(rt2x00dev, MAC_CSR17);
  bbp_state = rt2x00_get_field16(reg2, MAC_CSR17_BBP_CURR_STATE);
  rf_state = rt2x00_get_field16(reg2, MAC_CSR17_RF_CURR_STATE);
  if (bbp_state == state && rf_state == state)
   return 0;
  rt2500usb_register_write(rt2x00dev, MAC_CSR17, reg);
  msleep(30);
 }

 return -EBUSY;
}
