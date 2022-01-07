
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {scalar_t__ index; int name; int std; int type; } ;
struct soc_camera_device {TYPE_1__* vdev; } ;
struct file {struct soc_camera_device* private_data; } ;
struct TYPE_2__ {int tvnorms; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int soc_camera_enum_input(struct file *file, void *priv,
     struct v4l2_input *inp)
{
 struct soc_camera_device *icd = file->private_data;

 if (inp->index != 0)
  return -EINVAL;


 inp->type = V4L2_INPUT_TYPE_CAMERA;
 inp->std = icd->vdev->tvnorms;
 strscpy(inp->name, "Camera", sizeof(inp->name));

 return 0;
}
