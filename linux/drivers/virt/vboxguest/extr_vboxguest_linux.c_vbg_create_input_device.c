
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vbg_dev {struct input_dev* input; int dev; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {int product; int vendor; int bustype; } ;
struct input_dev {char* name; TYPE_2__ dev; int close; int open; TYPE_1__ id; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_MOUSE ;
 int BUS_PCI ;
 int ENOMEM ;
 int EV_KEY ;
 int VBOX_VENDORID ;
 int VMMDEV_DEVICEID ;
 int VMMDEV_MOUSE_RANGE_MAX ;
 int VMMDEV_MOUSE_RANGE_MIN ;
 struct input_dev* devm_input_allocate_device (int ) ;
 int input_register_device (struct input_dev*) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;
 int input_set_capability (struct input_dev*,int ,int ) ;
 int input_set_drvdata (struct input_dev*,struct vbg_dev*) ;
 int vbg_input_close ;
 int vbg_input_open ;

__attribute__((used)) static int vbg_create_input_device(struct vbg_dev *gdev)
{
 struct input_dev *input;

 input = devm_input_allocate_device(gdev->dev);
 if (!input)
  return -ENOMEM;

 input->id.bustype = BUS_PCI;
 input->id.vendor = VBOX_VENDORID;
 input->id.product = VMMDEV_DEVICEID;
 input->open = vbg_input_open;
 input->close = vbg_input_close;
 input->dev.parent = gdev->dev;
 input->name = "VirtualBox mouse integration";

 input_set_abs_params(input, ABS_X, VMMDEV_MOUSE_RANGE_MIN,
        VMMDEV_MOUSE_RANGE_MAX, 0, 0);
 input_set_abs_params(input, ABS_Y, VMMDEV_MOUSE_RANGE_MIN,
        VMMDEV_MOUSE_RANGE_MAX, 0, 0);
 input_set_capability(input, EV_KEY, BTN_MOUSE);
 input_set_drvdata(input, gdev);

 gdev->input = input;

 return input_register_device(gdev->input);
}
