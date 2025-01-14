
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct ds1286_priv {struct rtc_device* rtc; int lock; struct rtc_device* rtcregs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int THIS_MODULE ;
 struct rtc_device* devm_ioremap_resource (int *,struct resource*) ;
 struct ds1286_priv* devm_kzalloc (int *,int,int ) ;
 struct rtc_device* devm_rtc_device_register (int *,char*,int *,int ) ;
 int ds1286_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ds1286_priv*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ds1286_probe(struct platform_device *pdev)
{
 struct rtc_device *rtc;
 struct resource *res;
 struct ds1286_priv *priv;

 priv = devm_kzalloc(&pdev->dev, sizeof(struct ds1286_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->rtcregs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->rtcregs))
  return PTR_ERR(priv->rtcregs);

 spin_lock_init(&priv->lock);
 platform_set_drvdata(pdev, priv);
 rtc = devm_rtc_device_register(&pdev->dev, "ds1286", &ds1286_ops,
     THIS_MODULE);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);
 priv->rtc = rtc;
 return 0;
}
