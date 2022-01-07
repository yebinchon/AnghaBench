
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_ipipeif_device {int video_out; int subdev; } ;


 int omap4iss_video_unregister (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

void omap4iss_ipipeif_unregister_entities(struct iss_ipipeif_device *ipipeif)
{
 v4l2_device_unregister_subdev(&ipipeif->subdev);
 omap4iss_video_unregister(&ipipeif->video_out);
}
