
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_selection {int target; TYPE_1__ r; int type; } ;
struct TYPE_4__ {int height; int width; } ;
struct ipu_csc_scaler_q_data {TYPE_2__ cur_fmt; TYPE_1__ rect; } ;
struct ipu_csc_scaler_ctx {int dummy; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;






 struct ipu_csc_scaler_ctx* fh_to_ctx (void*) ;
 struct ipu_csc_scaler_q_data* get_q_data (struct ipu_csc_scaler_ctx*,int ) ;

__attribute__((used)) static int ipu_csc_scaler_g_selection(struct file *file, void *priv,
          struct v4l2_selection *s)
{
 struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
 struct ipu_csc_scaler_q_data *q_data;

 switch (s->target) {
 case 130:
 case 128:
 case 129:
  if (s->type != V4L2_BUF_TYPE_VIDEO_OUTPUT)
   return -EINVAL;
  q_data = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_OUTPUT);
  break;
 case 133:
 case 131:
 case 132:
  if (s->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
   return -EINVAL;
  q_data = get_q_data(ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
  break;
 default:
  return -EINVAL;
 }

 if (s->target == 130 ||
     s->target == 133) {
  s->r = q_data->rect;
 } else {
  s->r.left = 0;
  s->r.top = 0;
  s->r.width = q_data->cur_fmt.width;
  s->r.height = q_data->cur_fmt.height;
 }

 return 0;
}
