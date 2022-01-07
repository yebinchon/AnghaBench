
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct uvc_video {int mutex; int queue; } ;
struct uvc_file_handle {int vfh; struct uvc_video* device; } ;
struct uvc_device {int dummy; } ;
struct file {int * private_data; } ;


 int kfree (struct uvc_file_handle*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct uvc_file_handle* to_uvc_file_handle (int *) ;
 int uvc_function_disconnect (struct uvc_device*) ;
 int uvcg_free_buffers (int *) ;
 int uvcg_video_enable (struct uvc_video*,int ) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int
uvc_v4l2_release(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);
 struct uvc_file_handle *handle = to_uvc_file_handle(file->private_data);
 struct uvc_video *video = handle->device;

 uvc_function_disconnect(uvc);

 mutex_lock(&video->mutex);
 uvcg_video_enable(video, 0);
 uvcg_free_buffers(&video->queue);
 mutex_unlock(&video->mutex);

 file->private_data = ((void*)0);
 v4l2_fh_del(&handle->vfh);
 v4l2_fh_exit(&handle->vfh);
 kfree(handle);

 return 0;
}
