
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct most_video_dev {int dummy; } ;
struct file {int dummy; } ;
struct comp_fh {struct most_video_dev* mdev; } ;


 int VIDIOC_TRY_FMT ;
 int comp_set_format (struct most_video_dev*,int ,struct v4l2_format*) ;

__attribute__((used)) static int vidioc_try_fmt_vid_cap(struct file *file, void *priv,
      struct v4l2_format *f)
{
 struct comp_fh *fh = priv;
 struct most_video_dev *mdev = fh->mdev;

 return comp_set_format(mdev, VIDIOC_TRY_FMT, f);
}
