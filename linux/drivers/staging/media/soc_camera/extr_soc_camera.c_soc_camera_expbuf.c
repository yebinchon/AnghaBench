
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_exportbuffer {int dummy; } ;
struct soc_camera_device {int vb2_vidq; struct file* streamer; } ;
struct file {struct soc_camera_device* private_data; } ;


 int EBUSY ;
 int vb2_expbuf (int *,struct v4l2_exportbuffer*) ;

__attribute__((used)) static int soc_camera_expbuf(struct file *file, void *priv,
        struct v4l2_exportbuffer *p)
{
 struct soc_camera_device *icd = file->private_data;

 if (icd->streamer && icd->streamer != file)
  return -EBUSY;
 return vb2_expbuf(&icd->vb2_vidq, p);
}
