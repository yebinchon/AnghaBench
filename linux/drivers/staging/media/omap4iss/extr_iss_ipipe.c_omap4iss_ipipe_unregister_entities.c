
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_ipipe_device {int subdev; } ;


 int v4l2_device_unregister_subdev (int *) ;

void omap4iss_ipipe_unregister_entities(struct iss_ipipe_device *ipipe)
{
 v4l2_device_unregister_subdev(&ipipe->subdev);
}
