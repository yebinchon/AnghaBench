
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb3503 {int clk; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct usb3503* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int usb3503_platform_remove(struct platform_device *pdev)
{
 struct usb3503 *hub;

 hub = platform_get_drvdata(pdev);
 clk_disable_unprepare(hub->clk);

 return 0;
}
