
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entity; } ;
struct iss_csi2_device {TYPE_1__ subdev; int video_out; } ;
struct iss_device {struct iss_csi2_device csi2b; struct iss_csi2_device csi2a; } ;


 int media_entity_cleanup (int *) ;
 int omap4iss_video_cleanup (int *) ;

void omap4iss_csi2_cleanup(struct iss_device *iss)
{
 struct iss_csi2_device *csi2a = &iss->csi2a;
 struct iss_csi2_device *csi2b = &iss->csi2b;

 omap4iss_video_cleanup(&csi2a->video_out);
 media_entity_cleanup(&csi2a->subdev.entity);

 omap4iss_video_cleanup(&csi2b->video_out);
 media_entity_cleanup(&csi2b->subdev.entity);
}
