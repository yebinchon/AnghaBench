
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int entity; } ;
struct TYPE_6__ {TYPE_2__ video; } ;
struct TYPE_4__ {int entity; } ;
struct iss_csi2_device {TYPE_3__ video_out; TYPE_1__ subdev; } ;
struct iss_device {struct iss_csi2_device csi2b; struct iss_csi2_device csi2a; } ;


 int CSI2_PAD_SOURCE ;
 int media_create_pad_link (int *,int ,int *,int ,int ) ;

int omap4iss_csi2_create_links(struct iss_device *iss)
{
 struct iss_csi2_device *csi2a = &iss->csi2a;
 struct iss_csi2_device *csi2b = &iss->csi2b;
 int ret;


 ret = media_create_pad_link(&csi2a->subdev.entity, CSI2_PAD_SOURCE,
        &csi2a->video_out.video.entity, 0, 0);
 if (ret < 0)
  return ret;


 ret = media_create_pad_link(&csi2b->subdev.entity, CSI2_PAD_SOURCE,
        &csi2b->video_out.video.entity, 0, 0);
 if (ret < 0)
  return ret;

 return 0;
}
