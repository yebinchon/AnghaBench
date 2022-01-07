
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prp_priv {int lock; } ;
struct imx_ic_priv {struct prp_priv* task_priv; } ;


 int mutex_destroy (int *) ;

__attribute__((used)) static void prp_remove(struct imx_ic_priv *ic_priv)
{
 struct prp_priv *priv = ic_priv->task_priv;

 mutex_destroy(&priv->lock);
}
