
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
struct iss_ipipeif_device {TYPE_3__ video_out; TYPE_1__ subdev; } ;
struct iss_device {struct iss_ipipeif_device ipipeif; } ;


 int IPIPEIF_PAD_SOURCE_ISIF_SF ;
 int media_create_pad_link (int *,int ,int *,int ,int ) ;

int omap4iss_ipipeif_create_links(struct iss_device *iss)
{
 struct iss_ipipeif_device *ipipeif = &iss->ipipeif;


 return media_create_pad_link(&ipipeif->subdev.entity,
         IPIPEIF_PAD_SOURCE_ISIF_SF,
         &ipipeif->video_out.video.entity, 0, 0);
}
