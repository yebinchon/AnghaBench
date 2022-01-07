
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {struct imx_ic_priv* ic_priv; int lock; } ;
struct imx_ic_priv {struct prp_priv* task_priv; int ipu_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct prp_priv* devm_kzalloc (int ,int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int prp_init(struct imx_ic_priv *ic_priv)
{
 struct prp_priv *priv;

 priv = devm_kzalloc(ic_priv->ipu_dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 mutex_init(&priv->lock);
 ic_priv->task_priv = priv;
 priv->ic_priv = ic_priv;

 return 0;
}
