
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {int lock; int vdev; int eof_timeout_timer; int irqlock; struct imx_ic_priv* ic_priv; } ;
struct imx_ic_priv {int sd; int ipu_dev; struct prp_priv* task_priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PRPENCVF_SRC_PAD ;
 int PTR_ERR (int ) ;
 struct prp_priv* devm_kzalloc (int ,int,int ) ;
 int imx_media_capture_device_init (int ,int *,int ) ;
 int mutex_init (int *) ;
 int prp_eof_timeout ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int prp_init(struct imx_ic_priv *ic_priv)
{
 struct prp_priv *priv;

 priv = devm_kzalloc(ic_priv->ipu_dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 ic_priv->task_priv = priv;
 priv->ic_priv = ic_priv;

 spin_lock_init(&priv->irqlock);
 timer_setup(&priv->eof_timeout_timer, prp_eof_timeout, 0);

 priv->vdev = imx_media_capture_device_init(ic_priv->ipu_dev,
         &ic_priv->sd,
         PRPENCVF_SRC_PAD);
 if (IS_ERR(priv->vdev))
  return PTR_ERR(priv->vdev);

 mutex_init(&priv->lock);

 return 0;
}
