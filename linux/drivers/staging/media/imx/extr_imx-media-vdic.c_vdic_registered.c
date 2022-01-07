
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vdic_priv {int ctrl_hdlr; TYPE_2__* pad; int active_input_pad; TYPE_1__* frame_interval; int * cc; int * format_mbus; } ;
struct v4l2_subdev {int entity; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int numerator; int denominator; } ;


 int CS_SEL_YUV ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int V4L2_FIELD_NONE ;
 int VDIC_NUM_PADS ;
 int VDIC_SINK_PAD_DIRECT ;
 int VDIC_SINK_PAD_IDMAC ;
 int VDIC_SRC_PAD_DIRECT ;
 int imx_media_enum_ipu_format (scalar_t__*,int ,int ) ;
 int imx_media_init_mbus_fmt (int *,int,int,scalar_t__,int ,int *) ;
 int media_entity_pads_init (int *,int,TYPE_2__*) ;
 int v4l2_ctrl_handler_free (int *) ;
 struct vdic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int vdic_init_controls (struct vdic_priv*) ;

__attribute__((used)) static int vdic_registered(struct v4l2_subdev *sd)
{
 struct vdic_priv *priv = v4l2_get_subdevdata(sd);
 int i, ret;
 u32 code;

 for (i = 0; i < VDIC_NUM_PADS; i++) {
  priv->pad[i].flags = (i == VDIC_SRC_PAD_DIRECT) ?
   MEDIA_PAD_FL_SOURCE : MEDIA_PAD_FL_SINK;

  code = 0;
  if (i != VDIC_SINK_PAD_IDMAC)
   imx_media_enum_ipu_format(&code, 0, CS_SEL_YUV);


  ret = imx_media_init_mbus_fmt(&priv->format_mbus[i],
           640, 480, code, V4L2_FIELD_NONE,
           &priv->cc[i]);
  if (ret)
   return ret;


  priv->frame_interval[i].numerator = 1;
  priv->frame_interval[i].denominator = 30;
  if (i == VDIC_SRC_PAD_DIRECT)
   priv->frame_interval[i].denominator *= 2;
 }

 priv->active_input_pad = VDIC_SINK_PAD_DIRECT;

 ret = vdic_init_controls(priv);
 if (ret)
  return ret;

 ret = media_entity_pads_init(&sd->entity, VDIC_NUM_PADS, priv->pad);
 if (ret)
  v4l2_ctrl_handler_free(&priv->ctrl_hdlr);

 return ret;
}
