
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vbg_dev {int dummy; } ;
struct input_dev {int dummy; } ;


 struct vbg_dev* input_get_drvdata (struct input_dev*) ;
 int vbg_core_set_mouse_status (struct vbg_dev*,int ) ;

__attribute__((used)) static void vbg_input_close(struct input_dev *input)
{
 struct vbg_dev *gdev = input_get_drvdata(input);

 vbg_core_set_mouse_status(gdev, 0);
}
