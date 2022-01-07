
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsens_priv {TYPE_1__* ops; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int (* disable ) (struct tsens_priv*) ;} ;


 struct tsens_priv* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct tsens_priv*) ;

__attribute__((used)) static int tsens_remove(struct platform_device *pdev)
{
 struct tsens_priv *priv = platform_get_drvdata(pdev);

 if (priv->ops->disable)
  priv->ops->disable(priv);

 return 0;
}
