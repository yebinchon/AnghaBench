
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visorinput_devdata {struct input_dev* visorinput_dev; } ;
struct TYPE_2__ {int arg1; int action; int arg2; } ;
struct visor_inputreport {TYPE_1__ activity; } ;
struct visor_device {int visorchannel; int device; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int REL_WHEEL ;
 int calc_button (int) ;
 struct visorinput_devdata* dev_get_drvdata (int *) ;
 int handle_locking_key (struct input_dev*,int,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int scancode_to_keycode (int) ;
 int visorchannel_signalremove (int ,int ,struct visor_inputreport*) ;

__attribute__((used)) static void visorinput_channel_interrupt(struct visor_device *dev)
{
 struct visor_inputreport r;
 int scancode, keycode;
 struct input_dev *visorinput_dev;
 int xmotion, ymotion, button;
 int i;
 struct visorinput_devdata *devdata = dev_get_drvdata(&dev->device);

 if (!devdata)
  return;

 visorinput_dev = devdata->visorinput_dev;

 while (!visorchannel_signalremove(dev->visorchannel, 0, &r)) {
  scancode = r.activity.arg1;
  keycode = scancode_to_keycode(scancode);
  switch (r.activity.action) {
  case 138:
   input_report_key(visorinput_dev, keycode, 1);
   input_sync(visorinput_dev);
   break;
  case 136:
   input_report_key(visorinput_dev, keycode, 0);
   input_sync(visorinput_dev);
   break;
  case 137:
   input_report_key(visorinput_dev, keycode, 1);
   input_sync(visorinput_dev);
   input_report_key(visorinput_dev, keycode, 0);
   input_sync(visorinput_dev);
   break;
  case 131:
   handle_locking_key(visorinput_dev, keycode,
        r.activity.arg2);
   break;
  case 128:
   xmotion = r.activity.arg1;
   ymotion = r.activity.arg2;
   input_report_abs(visorinput_dev, ABS_X, xmotion);
   input_report_abs(visorinput_dev, ABS_Y, ymotion);
   input_sync(visorinput_dev);
   break;
  case 133:
   button = calc_button(r.activity.arg1);
   if (button < 0)
    break;
   input_report_key(visorinput_dev, button, 1);
   input_sync(visorinput_dev);
   break;
  case 132:
   button = calc_button(r.activity.arg1);
   if (button < 0)
    break;
   input_report_key(visorinput_dev, button, 0);
   input_sync(visorinput_dev);
   break;
  case 135:
   button = calc_button(r.activity.arg1);
   if (button < 0)
    break;
   input_report_key(visorinput_dev, button, 1);
   input_sync(visorinput_dev);
   input_report_key(visorinput_dev, button, 0);
   input_sync(visorinput_dev);
   break;
  case 134:
   button = calc_button(r.activity.arg1);
   if (button < 0)
    break;
   for (i = 0; i < 2; i++) {
    input_report_key(visorinput_dev, button, 1);
    input_sync(visorinput_dev);
    input_report_key(visorinput_dev, button, 0);
    input_sync(visorinput_dev);
   }
   break;
  case 130:
   input_report_rel(visorinput_dev, REL_WHEEL, 1);
   input_sync(visorinput_dev);
   break;
  case 129:
   input_report_rel(visorinput_dev, REL_WHEEL, -1);
   input_sync(visorinput_dev);
   break;
  default:

   break;
  }
 }
}
