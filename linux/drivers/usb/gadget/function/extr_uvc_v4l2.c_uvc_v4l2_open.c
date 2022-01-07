
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct uvc_file_handle {int vfh; int * device; } ;
struct uvc_device {int video; } ;
struct file {int * private_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct uvc_file_handle* kzalloc (int,int ) ;
 int uvc_function_connect (struct uvc_device*) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_init (int *,struct video_device*) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int
uvc_v4l2_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);
 struct uvc_file_handle *handle;

 handle = kzalloc(sizeof(*handle), GFP_KERNEL);
 if (handle == ((void*)0))
  return -ENOMEM;

 v4l2_fh_init(&handle->vfh, vdev);
 v4l2_fh_add(&handle->vfh);

 handle->device = &uvc->video;
 file->private_data = &handle->vfh;

 uvc_function_connect(uvc);
 return 0;
}
