
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd_histb {int bus_clk; int utmi_clk; int pipe_clk; int soft_reset; int dev; int suspend_clk; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int xhci_histb_host_enable(struct xhci_hcd_histb *histb)
{
 int ret;

 ret = clk_prepare_enable(histb->bus_clk);
 if (ret) {
  dev_err(histb->dev, "failed to enable bus clk\n");
  return ret;
 }

 ret = clk_prepare_enable(histb->utmi_clk);
 if (ret) {
  dev_err(histb->dev, "failed to enable utmi clk\n");
  goto err_utmi_clk;
 }

 ret = clk_prepare_enable(histb->pipe_clk);
 if (ret) {
  dev_err(histb->dev, "failed to enable pipe clk\n");
  goto err_pipe_clk;
 }

 ret = clk_prepare_enable(histb->suspend_clk);
 if (ret) {
  dev_err(histb->dev, "failed to enable suspend clk\n");
  goto err_suspend_clk;
 }

 reset_control_deassert(histb->soft_reset);

 return 0;

err_suspend_clk:
 clk_disable_unprepare(histb->pipe_clk);
err_pipe_clk:
 clk_disable_unprepare(histb->utmi_clk);
err_utmi_clk:
 clk_disable_unprepare(histb->bus_clk);

 return ret;
}
