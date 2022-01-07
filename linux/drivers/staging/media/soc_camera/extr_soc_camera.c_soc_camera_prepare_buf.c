
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct soc_camera_device {int vb2_vidq; } ;
struct file {struct soc_camera_device* private_data; } ;


 int vb2_prepare_buf (int *,int *,struct v4l2_buffer*) ;

__attribute__((used)) static int soc_camera_prepare_buf(struct file *file, void *priv,
      struct v4l2_buffer *b)
{
 struct soc_camera_device *icd = file->private_data;

 return vb2_prepare_buf(&icd->vb2_vidq, ((void*)0), b);
}
