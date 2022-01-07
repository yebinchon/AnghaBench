
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_video_dev {unsigned int ctrl_input; } ;
struct file {int dummy; } ;
struct comp_fh {struct most_video_dev* mdev; } ;


 int EINVAL ;
 unsigned int V4L2_CMP_MAX_INPUT ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int index)
{
 struct comp_fh *fh = priv;
 struct most_video_dev *mdev = fh->mdev;

 if (index >= V4L2_CMP_MAX_INPUT)
  return -EINVAL;
 mdev->ctrl_input = index;
 return 0;
}
