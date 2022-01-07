
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int vidioc_try_fmt (struct file*,void*,struct v4l2_format*,int) ;

__attribute__((used)) static int vidioc_try_fmt_cap_mplane(struct file *file, void *priv,
         struct v4l2_format *f)
{
 return vidioc_try_fmt(file, priv, f, 1);
}
