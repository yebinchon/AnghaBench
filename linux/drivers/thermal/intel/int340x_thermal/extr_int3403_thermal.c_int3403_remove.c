
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct int3403_priv {int type; } ;





 int int3403_cdev_remove (struct int3403_priv*) ;
 int int3403_sensor_remove (struct int3403_priv*) ;
 struct int3403_priv* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int int3403_remove(struct platform_device *pdev)
{
 struct int3403_priv *priv = platform_get_drvdata(pdev);

 switch (priv->type) {
 case 128:
  int3403_sensor_remove(priv);
  break;
 case 129:
 case 130:
  int3403_cdev_remove(priv);
  break;
 default:
  break;
 }

 return 0;
}
