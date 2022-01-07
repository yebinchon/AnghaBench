
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_priv {int dummy; } ;
struct platform_device {int dev; } ;


 struct usbhs_priv* dev_get_drvdata (int *) ;

struct usbhs_priv *usbhs_pdev_to_priv(struct platform_device *pdev)
{
 return dev_get_drvdata(&pdev->dev);
}
