
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_csi2_device {int video_out; int subdev; } ;


 int omap4iss_video_unregister (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

void omap4iss_csi2_unregister_entities(struct iss_csi2_device *csi2)
{
 v4l2_device_unregister_subdev(&csi2->subdev);
 omap4iss_video_unregister(&csi2->video_out);
}
