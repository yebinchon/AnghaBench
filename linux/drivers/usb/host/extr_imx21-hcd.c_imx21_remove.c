
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct imx21 {int regs; int clk; } ;


 int IORESOURCE_MEM ;
 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 struct imx21* hcd_to_imx21 (struct usb_hcd*) ;
 int iounmap (int ) ;
 int kfree (struct usb_hcd*) ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int remove_debug_files (struct imx21*) ;
 int resource_size (struct resource*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int imx21_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);
 struct imx21 *imx21 = hcd_to_imx21(hcd);
 struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 remove_debug_files(imx21);
 usb_remove_hcd(hcd);

 if (res != ((void*)0)) {
  clk_disable_unprepare(imx21->clk);
  clk_put(imx21->clk);
  iounmap(imx21->regs);
  release_mem_region(res->start, resource_size(res));
 }

 kfree(hcd);
 return 0;
}
