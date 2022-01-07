
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_handler {int error; } ;
struct ipu_csc_scaler_ctx {struct v4l2_ctrl_handler ctrl_hdlr; } ;


 int V4L2_CID_HFLIP ;
 int V4L2_CID_ROTATE ;
 int V4L2_CID_VFLIP ;
 int ipu_csc_scaler_ctrl_ops ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_handler_setup (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int ,int,int,int ) ;

__attribute__((used)) static int ipu_csc_scaler_init_controls(struct ipu_csc_scaler_ctx *ctx)
{
 struct v4l2_ctrl_handler *hdlr = &ctx->ctrl_hdlr;

 v4l2_ctrl_handler_init(hdlr, 3);

 v4l2_ctrl_new_std(hdlr, &ipu_csc_scaler_ctrl_ops, V4L2_CID_HFLIP,
     0, 1, 1, 0);
 v4l2_ctrl_new_std(hdlr, &ipu_csc_scaler_ctrl_ops, V4L2_CID_VFLIP,
     0, 1, 1, 0);
 v4l2_ctrl_new_std(hdlr, &ipu_csc_scaler_ctrl_ops, V4L2_CID_ROTATE,
     0, 270, 90, 0);

 if (hdlr->error) {
  v4l2_ctrl_handler_free(hdlr);
  return hdlr->error;
 }

 v4l2_ctrl_handler_setup(hdlr);
 return 0;
}
