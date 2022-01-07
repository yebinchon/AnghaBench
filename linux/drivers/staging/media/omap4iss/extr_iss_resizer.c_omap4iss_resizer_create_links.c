
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
struct iss_resizer_device {TYPE_3__ video_out; TYPE_1__ subdev; } ;
struct iss_device {struct iss_resizer_device resizer; } ;


 int RESIZER_PAD_SOURCE_MEM ;
 int media_create_pad_link (int *,int ,int *,int ,int ) ;

int omap4iss_resizer_create_links(struct iss_device *iss)
{
 struct iss_resizer_device *resizer = &iss->resizer;


 return media_create_pad_link(&resizer->subdev.entity,
         RESIZER_PAD_SOURCE_MEM,
         &resizer->video_out.video.entity, 0, 0);
}
