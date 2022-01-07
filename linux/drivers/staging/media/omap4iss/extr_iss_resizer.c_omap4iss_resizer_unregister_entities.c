
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_resizer_device {int video_out; int subdev; } ;


 int omap4iss_video_unregister (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

void omap4iss_resizer_unregister_entities(struct iss_resizer_device *resizer)
{
 v4l2_device_unregister_subdev(&resizer->subdev);
 omap4iss_video_unregister(&resizer->video_out);
}
