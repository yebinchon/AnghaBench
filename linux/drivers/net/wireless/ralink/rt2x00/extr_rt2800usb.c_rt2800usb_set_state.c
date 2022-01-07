
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int dummy; } ;
typedef enum dev_state { ____Placeholder_dev_state } dev_state ;


 int MCU_SLEEP ;
 int MCU_WAKEUP ;
 int STATE_AWAKE ;
 int rt2800_mcu_request (struct rt2x00_dev*,int ,int,int,int) ;

__attribute__((used)) static int rt2800usb_set_state(struct rt2x00_dev *rt2x00dev,
          enum dev_state state)
{
 if (state == STATE_AWAKE)
  rt2800_mcu_request(rt2x00dev, MCU_WAKEUP, 0xff, 0, 2);
 else
  rt2800_mcu_request(rt2x00dev, MCU_SLEEP, 0xff, 0xff, 2);

 return 0;
}
