
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_subdev {int entity; } ;
struct TYPE_3__ {int numerator; int denominator; } ;
struct prp_priv {TYPE_2__* pad; int format_mbus; TYPE_1__ frame_interval; } ;
struct TYPE_4__ {int flags; } ;


 int CS_SEL_YUV ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int PRP_NUM_PADS ;
 int PRP_SINK_PAD ;
 int V4L2_FIELD_NONE ;
 int imx_media_enum_ipu_format (int *,int ,int ) ;
 int imx_media_init_mbus_fmt (int *,int,int,int ,int ,int *) ;
 int media_entity_pads_init (int *,int,TYPE_2__*) ;
 struct prp_priv* sd_to_priv (struct v4l2_subdev*) ;

__attribute__((used)) static int prp_registered(struct v4l2_subdev *sd)
{
 struct prp_priv *priv = sd_to_priv(sd);
 int i, ret;
 u32 code;

 for (i = 0; i < PRP_NUM_PADS; i++) {
  priv->pad[i].flags = (i == PRP_SINK_PAD) ?
   MEDIA_PAD_FL_SINK : MEDIA_PAD_FL_SOURCE;
 }


 priv->frame_interval.numerator = 1;
 priv->frame_interval.denominator = 30;


 imx_media_enum_ipu_format(&code, 0, CS_SEL_YUV);
 ret = imx_media_init_mbus_fmt(&priv->format_mbus, 640, 480, code,
          V4L2_FIELD_NONE, ((void*)0));
 if (ret)
  return ret;

 return media_entity_pads_init(&sd->entity, PRP_NUM_PADS, priv->pad);
}
