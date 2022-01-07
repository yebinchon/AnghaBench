
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vbg_dev {int dummy; } ;
struct input_dev {int dummy; } ;


 int VMMDEV_MOUSE_GUEST_CAN_ABSOLUTE ;
 int VMMDEV_MOUSE_NEW_PROTOCOL ;
 struct vbg_dev* input_get_drvdata (struct input_dev*) ;
 int vbg_core_set_mouse_status (struct vbg_dev*,int) ;

__attribute__((used)) static int vbg_input_open(struct input_dev *input)
{
 struct vbg_dev *gdev = input_get_drvdata(input);
 u32 feat = VMMDEV_MOUSE_GUEST_CAN_ABSOLUTE | VMMDEV_MOUSE_NEW_PROTOCOL;
 int ret;

 ret = vbg_core_set_mouse_status(gdev, feat);
 if (ret)
  return ret;

 return 0;
}
