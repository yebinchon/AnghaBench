
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix; } ;
struct v4l2_format {TYPE_1__ fmt; int type; } ;
struct ipu_csc_scaler_q_data {int cur_fmt; } ;
struct ipu_csc_scaler_ctx {int dummy; } ;
struct file {int dummy; } ;


 struct ipu_csc_scaler_ctx* fh_to_ctx (void*) ;
 struct ipu_csc_scaler_q_data* get_q_data (struct ipu_csc_scaler_ctx*,int ) ;

__attribute__((used)) static int ipu_csc_scaler_g_fmt(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct ipu_csc_scaler_ctx *ctx = fh_to_ctx(priv);
 struct ipu_csc_scaler_q_data *q_data;

 q_data = get_q_data(ctx, f->type);

 f->fmt.pix = q_data->cur_fmt;

 return 0;
}
