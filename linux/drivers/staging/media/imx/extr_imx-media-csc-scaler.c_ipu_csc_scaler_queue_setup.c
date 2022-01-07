
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int type; } ;
struct TYPE_3__ {unsigned int sizeimage; } ;
struct ipu_csc_scaler_q_data {TYPE_1__ cur_fmt; } ;
struct ipu_csc_scaler_ctx {TYPE_2__* priv; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,unsigned int,unsigned int) ;
 struct ipu_csc_scaler_q_data* get_q_data (struct ipu_csc_scaler_ctx*,int ) ;
 struct ipu_csc_scaler_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int ipu_csc_scaler_queue_setup(struct vb2_queue *vq,
          unsigned int *nbuffers,
          unsigned int *nplanes,
          unsigned int sizes[],
          struct device *alloc_devs[])
{
 struct ipu_csc_scaler_ctx *ctx = vb2_get_drv_priv(vq);
 struct ipu_csc_scaler_q_data *q_data;
 unsigned int size, count = *nbuffers;

 q_data = get_q_data(ctx, vq->type);

 size = q_data->cur_fmt.sizeimage;

 *nbuffers = count;

 if (*nplanes)
  return sizes[0] < size ? -EINVAL : 0;

 *nplanes = 1;
 sizes[0] = size;

 dev_dbg(ctx->priv->dev, "get %d buffer(s) of size %d each.\n",
  count, size);

 return 0;
}
