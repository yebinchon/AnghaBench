
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dev; } ;
struct imx_media_fim {int lock; struct v4l2_subdev* sd; } ;


 int ENOMEM ;
 struct imx_media_fim* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct imx_media_fim* devm_kzalloc (int ,int,int ) ;
 int init_fim_controls (struct imx_media_fim*) ;
 int spin_lock_init (int *) ;

struct imx_media_fim *imx_media_fim_init(struct v4l2_subdev *sd)
{
 struct imx_media_fim *fim;
 int ret;

 fim = devm_kzalloc(sd->dev, sizeof(*fim), GFP_KERNEL);
 if (!fim)
  return ERR_PTR(-ENOMEM);

 fim->sd = sd;

 spin_lock_init(&fim->lock);

 ret = init_fim_controls(fim);
 if (ret)
  return ERR_PTR(ret);

 return fim;
}
