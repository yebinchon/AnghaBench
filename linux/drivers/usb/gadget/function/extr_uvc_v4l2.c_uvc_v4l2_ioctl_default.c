
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct uvc_device {int dummy; } ;
struct file {int dummy; } ;


 long ENOIOCTLCMD ;

 long uvc_send_response (struct uvc_device*,void*) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static long
uvc_v4l2_ioctl_default(struct file *file, void *fh, bool valid_prio,
         unsigned int cmd, void *arg)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);

 switch (cmd) {
 case 128:
  return uvc_send_response(uvc, arg);

 default:
  return -ENOIOCTLCMD;
 }
}
