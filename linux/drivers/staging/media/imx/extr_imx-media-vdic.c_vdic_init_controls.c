
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct v4l2_ctrl_handler {int error; } ;
struct vdic_priv {TYPE_1__ sd; struct v4l2_ctrl_handler ctrl_hdlr; } ;


 int HIGH_MOTION ;
 int V4L2_CID_DEINTERLACING_MODE ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std_menu_items (struct v4l2_ctrl_handler*,int *,int ,int ,int ,int ,int ) ;
 int vdic_ctrl_motion_menu ;
 int vdic_ctrl_ops ;

__attribute__((used)) static int vdic_init_controls(struct vdic_priv *priv)
{
 struct v4l2_ctrl_handler *hdlr = &priv->ctrl_hdlr;
 int ret;

 v4l2_ctrl_handler_init(hdlr, 1);

 v4l2_ctrl_new_std_menu_items(hdlr, &vdic_ctrl_ops,
         V4L2_CID_DEINTERLACING_MODE,
         HIGH_MOTION, 0, HIGH_MOTION,
         vdic_ctrl_motion_menu);

 priv->sd.ctrl_handler = hdlr;

 if (hdlr->error) {
  ret = hdlr->error;
  goto out_free;
 }

 v4l2_ctrl_handler_setup(hdlr);
 return 0;

out_free:
 v4l2_ctrl_handler_free(hdlr);
 return ret;
}
