
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct iss_resizer_device {int video_out; int subdev; } ;


 int omap4iss_resizer_unregister_entities (struct iss_resizer_device*) ;
 int omap4iss_video_register (int *,struct v4l2_device*) ;
 int v4l2_device_register_subdev (struct v4l2_device*,int *) ;

int omap4iss_resizer_register_entities(struct iss_resizer_device *resizer,
           struct v4l2_device *vdev)
{
 int ret;


 ret = v4l2_device_register_subdev(vdev, &resizer->subdev);
 if (ret < 0)
  goto error;

 ret = omap4iss_video_register(&resizer->video_out, vdev);
 if (ret < 0)
  goto error;

 return 0;

error:
 omap4iss_resizer_unregister_entities(resizer);
 return ret;
}
