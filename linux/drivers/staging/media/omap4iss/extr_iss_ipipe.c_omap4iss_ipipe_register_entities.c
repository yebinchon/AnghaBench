
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_device {int dummy; } ;
struct iss_ipipe_device {int subdev; } ;


 int omap4iss_ipipe_unregister_entities (struct iss_ipipe_device*) ;
 int v4l2_device_register_subdev (struct v4l2_device*,int *) ;

int omap4iss_ipipe_register_entities(struct iss_ipipe_device *ipipe,
         struct v4l2_device *vdev)
{
 int ret;


 ret = v4l2_device_register_subdev(vdev, &ipipe->subdev);
 if (ret < 0)
  goto error;

 return 0;

error:
 omap4iss_ipipe_unregister_entities(ipipe);
 return ret;
}
