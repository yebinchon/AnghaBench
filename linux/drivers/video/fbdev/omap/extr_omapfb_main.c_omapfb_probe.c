
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int BUG_ON (int ) ;
 int dev_err (int *,char*) ;
 int * fbdev_panel ;
 struct platform_device* fbdev_pdev ;
 int omapdss_device ;
 int omapfb_do_probe (struct platform_device*,int *) ;
 int platform_device_register (int *) ;

__attribute__((used)) static int omapfb_probe(struct platform_device *pdev)
{
 int r;

 BUG_ON(fbdev_pdev != ((void*)0));

 r = platform_device_register(&omapdss_device);
 if (r) {
  dev_err(&pdev->dev, "can't register omapdss device\n");
  return r;
 }


 fbdev_pdev = pdev;
 if (fbdev_panel != ((void*)0))
  omapfb_do_probe(fbdev_pdev, fbdev_panel);
 return 0;
}
