
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cpcap_phy_ddata {int vusb; int refclk; int detect_work; int phy; int dev; int active; } ;


 int MUSB_VBUS_OFF ;
 int atomic_set (int *,int ) ;
 int cancel_delayed_work_sync (int *) ;
 int clk_unprepare (int ) ;
 int cpcap_usb_set_uart_mode (struct cpcap_phy_ddata*) ;
 int dev_err (int ,char*) ;
 int musb_mailbox (int ) ;
 struct cpcap_phy_ddata* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int usb_remove_phy (int *) ;

__attribute__((used)) static int cpcap_usb_phy_remove(struct platform_device *pdev)
{
 struct cpcap_phy_ddata *ddata = platform_get_drvdata(pdev);
 int error;

 atomic_set(&ddata->active, 0);
 error = cpcap_usb_set_uart_mode(ddata);
 if (error)
  dev_err(ddata->dev, "could not set UART mode\n");

 error = musb_mailbox(MUSB_VBUS_OFF);
 if (error)
  dev_err(ddata->dev, "could not set mailbox\n");

 usb_remove_phy(&ddata->phy);
 cancel_delayed_work_sync(&ddata->detect_work);
 clk_unprepare(ddata->refclk);
 regulator_disable(ddata->vusb);

 return 0;
}
