
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct iss_ipipeif_device {int video_out; int subdev; } ;


 int omap4iss_ipipeif_unregister_entities (struct iss_ipipeif_device*) ;
 int omap4iss_video_register (int *,struct v4l2_device*) ;
 int v4l2_device_register_subdev (struct v4l2_device*,int *) ;

int omap4iss_ipipeif_register_entities(struct iss_ipipeif_device *ipipeif,
           struct v4l2_device *vdev)
{
 int ret;


 ret = v4l2_device_register_subdev(vdev, &ipipeif->subdev);
 if (ret < 0)
  goto error;

 ret = omap4iss_video_register(&ipipeif->video_out, vdev);
 if (ret < 0)
  goto error;

 return 0;

error:
 omap4iss_ipipeif_unregister_entities(ipipeif);
 return ret;
}
