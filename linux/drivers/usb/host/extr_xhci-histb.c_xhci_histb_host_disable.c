
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_histb {int bus_clk; int utmi_clk; int pipe_clk; int suspend_clk; int soft_reset; } ;


 int clk_disable_unprepare (int ) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static void xhci_histb_host_disable(struct xhci_hcd_histb *histb)
{
 reset_control_assert(histb->soft_reset);

 clk_disable_unprepare(histb->suspend_clk);
 clk_disable_unprepare(histb->pipe_clk);
 clk_disable_unprepare(histb->utmi_clk);
 clk_disable_unprepare(histb->bus_clk);
}
