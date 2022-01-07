
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvec_chip {int dummy; } ;
struct input_dev {int dummy; } ;
typedef int buf ;
struct TYPE_2__ {struct nvec_chip* nvec; } ;


 unsigned int EV_LED ;
 unsigned int EV_REP ;
 unsigned int LED_CAPSL ;
 char NVEC_KBD ;
 char SET_LEDS ;
 TYPE_1__ keys_dev ;
 int nvec_write_async (struct nvec_chip*,char*,int) ;

__attribute__((used)) static int nvec_kbd_event(struct input_dev *dev, unsigned int type,
     unsigned int code, int value)
{
 struct nvec_chip *nvec = keys_dev.nvec;
 char buf[] = { NVEC_KBD, SET_LEDS, 0 };

 if (type == EV_REP)
  return 0;

 if (type != EV_LED)
  return -1;

 if (code != LED_CAPSL)
  return -1;

 buf[2] = !!value;
 nvec_write_async(nvec, buf, sizeof(buf));

 return 0;
}
