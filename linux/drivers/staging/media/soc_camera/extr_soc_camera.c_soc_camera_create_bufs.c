
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_create_buffers {int dummy; } ;
struct soc_camera_device {struct file* streamer; int vb2_vidq; } ;
struct file {struct soc_camera_device* private_data; } ;


 int EBUSY ;
 int vb2_create_bufs (int *,struct v4l2_create_buffers*) ;

__attribute__((used)) static int soc_camera_create_bufs(struct file *file, void *priv,
       struct v4l2_create_buffers *create)
{
 struct soc_camera_device *icd = file->private_data;
 int ret;

 if (icd->streamer && icd->streamer != file)
  return -EBUSY;

 ret = vb2_create_bufs(&icd->vb2_vidq, create);
 if (!ret)
  icd->streamer = file;
 return ret;
}
