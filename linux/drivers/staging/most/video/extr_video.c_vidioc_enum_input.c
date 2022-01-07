
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {scalar_t__ index; int std; scalar_t__ audioset; int type; int name; } ;
struct most_video_dev {TYPE_1__* vdev; } ;
struct file {int dummy; } ;
struct comp_fh {struct most_video_dev* mdev; } ;
struct TYPE_2__ {int tvnorms; } ;


 int EINVAL ;
 scalar_t__ V4L2_CMP_MAX_INPUT ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *priv,
        struct v4l2_input *input)
{
 struct comp_fh *fh = priv;
 struct most_video_dev *mdev = fh->mdev;

 if (input->index >= V4L2_CMP_MAX_INPUT)
  return -EINVAL;

 strcpy(input->name, "MOST Video");
 input->type |= V4L2_INPUT_TYPE_CAMERA;
 input->audioset = 0;

 input->std = mdev->vdev->tvnorms;

 return 0;
}
