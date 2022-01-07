
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {int caps_lock; int nvec; } ;


 char BIT (int) ;
 char NVEC_KBD ;
 char SET_LEDS ;
 TYPE_1__ keys_dev ;
 int nvec_write_async (int ,char*,int) ;

__attribute__((used)) static void nvec_kbd_toggle_led(void)
{
 char buf[] = { NVEC_KBD, SET_LEDS, 0 };

 keys_dev.caps_lock = !keys_dev.caps_lock;

 if (keys_dev.caps_lock)

  buf[2] = BIT(0) | BIT(1) | BIT(2);

 nvec_write_async(keys_dev.nvec, buf, sizeof(buf));
}
