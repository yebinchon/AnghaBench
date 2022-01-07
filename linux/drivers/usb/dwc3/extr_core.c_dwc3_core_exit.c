
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3 {int reset; int clks; int num_clks; int usb3_generic_phy; int usb2_generic_phy; int usb3_phy; int usb2_phy; } ;


 int clk_bulk_disable_unprepare (int ,int ) ;
 int dwc3_event_buffers_cleanup (struct dwc3*) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 int reset_control_assert (int ) ;
 int usb_phy_set_suspend (int ,int) ;
 int usb_phy_shutdown (int ) ;

__attribute__((used)) static void dwc3_core_exit(struct dwc3 *dwc)
{
 dwc3_event_buffers_cleanup(dwc);

 usb_phy_shutdown(dwc->usb2_phy);
 usb_phy_shutdown(dwc->usb3_phy);
 phy_exit(dwc->usb2_generic_phy);
 phy_exit(dwc->usb3_generic_phy);

 usb_phy_set_suspend(dwc->usb2_phy, 1);
 usb_phy_set_suspend(dwc->usb3_phy, 1);
 phy_power_off(dwc->usb2_generic_phy);
 phy_power_off(dwc->usb3_generic_phy);
 clk_bulk_disable_unprepare(dwc->num_clks, dwc->clks);
 reset_control_assert(dwc->reset);
}
