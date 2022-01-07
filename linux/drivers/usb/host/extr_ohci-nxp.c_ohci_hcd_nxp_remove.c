
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int * isp1301_i2c_client ;
 int ohci_nxp_stop_hc () ;
 struct usb_hcd* platform_get_drvdata (struct platform_device*) ;
 int usb_host_clk ;
 int usb_put_hcd (struct usb_hcd*) ;
 int usb_remove_hcd (struct usb_hcd*) ;

__attribute__((used)) static int ohci_hcd_nxp_remove(struct platform_device *pdev)
{
 struct usb_hcd *hcd = platform_get_drvdata(pdev);

 usb_remove_hcd(hcd);
 ohci_nxp_stop_hc();
 usb_put_hcd(hcd);
 clk_disable_unprepare(usb_host_clk);
 isp1301_i2c_client = ((void*)0);

 return 0;
}
