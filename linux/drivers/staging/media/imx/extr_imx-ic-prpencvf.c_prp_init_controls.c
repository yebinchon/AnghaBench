
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ctrl_handler {int error; } ;
struct prp_priv {struct v4l2_ctrl_handler ctrl_hdlr; struct imx_ic_priv* ic_priv; } ;
struct TYPE_2__ {struct v4l2_ctrl_handler* ctrl_handler; } ;
struct imx_ic_priv {TYPE_1__ sd; } ;


 int V4L2_CID_HFLIP ;
 int V4L2_CID_ROTATE ;
 int V4L2_CID_VFLIP ;
 int prp_ctrl_ops ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int ) ;

__attribute__((used)) static int prp_init_controls(struct prp_priv *priv)
{
 struct imx_ic_priv *ic_priv = priv->ic_priv;
 struct v4l2_ctrl_handler *hdlr = &priv->ctrl_hdlr;
 int ret;

 v4l2_ctrl_handler_init(hdlr, 3);

 v4l2_ctrl_new_std(hdlr, &prp_ctrl_ops, V4L2_CID_HFLIP,
     0, 1, 1, 0);
 v4l2_ctrl_new_std(hdlr, &prp_ctrl_ops, V4L2_CID_VFLIP,
     0, 1, 1, 0);
 v4l2_ctrl_new_std(hdlr, &prp_ctrl_ops, V4L2_CID_ROTATE,
     0, 270, 90, 0);

 ic_priv->sd.ctrl_handler = hdlr;

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
