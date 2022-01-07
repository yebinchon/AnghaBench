
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vendor; int product; int version; int bustype; } ;
struct input_dev {char* name; char* phys; int* evbit; int close; int open; int keybit; TYPE_1__ id; } ;


 int ABS_X ;
 int ABS_Y ;
 int BIT_MASK (int ) ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BUS_VIRTUAL ;
 int EV_ABS ;
 int EV_KEY ;
 int EV_REL ;
 unsigned int PIXELS_ACROSS_DEFAULT ;
 unsigned int PIXELS_DOWN_DEFAULT ;
 int REL_WHEEL ;
 struct input_dev* input_allocate_device () ;
 int input_set_abs_params (struct input_dev*,int ,int ,unsigned int,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,void*) ;
 int set_bit (int ,int ) ;
 int visorinput_close ;
 int visorinput_open ;

__attribute__((used)) static struct input_dev *setup_client_mouse(void *devdata, unsigned int xres,
         unsigned int yres)
{
 struct input_dev *visorinput_dev = input_allocate_device();

 if (!visorinput_dev)
  return ((void*)0);

 visorinput_dev->name = "visor Mouse";
 visorinput_dev->phys = "visormou:input0";
 visorinput_dev->id.bustype = BUS_VIRTUAL;
 visorinput_dev->id.vendor = 0x0001;
 visorinput_dev->id.product = 0x0002;
 visorinput_dev->id.version = 0x0100;

 visorinput_dev->evbit[0] = BIT_MASK(EV_KEY) | BIT_MASK(EV_ABS);
 set_bit(BTN_LEFT, visorinput_dev->keybit);
 set_bit(BTN_RIGHT, visorinput_dev->keybit);
 set_bit(BTN_MIDDLE, visorinput_dev->keybit);

 if (xres == 0)
  xres = PIXELS_ACROSS_DEFAULT;
 if (yres == 0)
  yres = PIXELS_DOWN_DEFAULT;
 input_set_abs_params(visorinput_dev, ABS_X, 0, xres, 0, 0);
 input_set_abs_params(visorinput_dev, ABS_Y, 0, yres, 0, 0);

 visorinput_dev->open = visorinput_open;
 visorinput_dev->close = visorinput_close;

 input_set_drvdata(visorinput_dev, devdata);
 input_set_capability(visorinput_dev, EV_REL, REL_WHEEL);

 return visorinput_dev;
}
