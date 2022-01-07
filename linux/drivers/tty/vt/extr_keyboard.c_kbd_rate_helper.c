
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_repeat {scalar_t__ delay; scalar_t__ period; } ;
struct input_handle {struct input_dev* dev; } ;
struct input_dev {scalar_t__* rep; int evbit; } ;


 int EV_REP ;
 size_t REP_DELAY ;
 size_t REP_PERIOD ;
 int input_inject_event (struct input_handle*,int ,size_t,scalar_t__) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int kbd_rate_helper(struct input_handle *handle, void *data)
{
 struct input_dev *dev = handle->dev;
 struct kbd_repeat *rpt = data;

 if (test_bit(EV_REP, dev->evbit)) {

  if (rpt[0].delay > 0)
   input_inject_event(handle,
        EV_REP, REP_DELAY, rpt[0].delay);
  if (rpt[0].period > 0)
   input_inject_event(handle,
        EV_REP, REP_PERIOD, rpt[0].period);

  rpt[1].delay = dev->rep[REP_DELAY];
  rpt[1].period = dev->rep[REP_PERIOD];
 }

 return 0;
}
