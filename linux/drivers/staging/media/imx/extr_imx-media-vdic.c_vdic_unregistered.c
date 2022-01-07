
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdic_priv {int ctrl_hdlr; } ;
struct v4l2_subdev {int dummy; } ;


 int v4l2_ctrl_handler_free (int *) ;
 struct vdic_priv* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static void vdic_unregistered(struct v4l2_subdev *sd)
{
 struct vdic_priv *priv = v4l2_get_subdevdata(sd);

 v4l2_ctrl_handler_free(&priv->ctrl_hdlr);
}
