
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_pad {int index; } ;
struct media_entity {int dummy; } ;


 int EPIPE ;
 int IMX_MEDIA_GRP_ID_CSI2 ;
 struct media_pad* imx_media_pipeline_pad (struct media_entity*,int ,int ,int) ;

int imx_media_pipeline_csi2_channel(struct media_entity *start_entity)
{
 struct media_pad *pad;
 int ret = -EPIPE;

 pad = imx_media_pipeline_pad(start_entity, IMX_MEDIA_GRP_ID_CSI2,
         0, 1);
 if (pad)
  ret = pad->index - 1;

 return ret;
}
