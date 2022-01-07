
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_ctrl_handler {int error; } ;
struct amvdec_session {int ctrl_min_buf_capture; struct v4l2_ctrl_handler ctrl_handler; } ;


 int V4L2_CID_MIN_BUFFERS_FOR_CAPTURE ;
 int v4l2_ctrl_handler_free (struct v4l2_ctrl_handler*) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,int *,int ,int,int,int,int) ;

__attribute__((used)) static int vdec_init_ctrls(struct amvdec_session *sess)
{
 struct v4l2_ctrl_handler *ctrl_handler = &sess->ctrl_handler;
 int ret;

 ret = v4l2_ctrl_handler_init(ctrl_handler, 1);
 if (ret)
  return ret;

 sess->ctrl_min_buf_capture =
  v4l2_ctrl_new_std(ctrl_handler, ((void*)0),
      V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, 1, 32, 1,
      1);

 ret = ctrl_handler->error;
 if (ret) {
  v4l2_ctrl_handler_free(ctrl_handler);
  return ret;
 }

 return 0;
}
