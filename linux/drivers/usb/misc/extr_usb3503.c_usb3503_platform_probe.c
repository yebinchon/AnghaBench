
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb3503 {int * dev; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct usb3503* devm_kzalloc (int *,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct usb3503*) ;
 int usb3503_probe (struct usb3503*) ;

__attribute__((used)) static int usb3503_platform_probe(struct platform_device *pdev)
{
 struct usb3503 *hub;

 hub = devm_kzalloc(&pdev->dev, sizeof(struct usb3503), GFP_KERNEL);
 if (!hub)
  return -ENOMEM;
 hub->dev = &pdev->dev;
 platform_set_drvdata(pdev, hub);

 return usb3503_probe(hub);
}
