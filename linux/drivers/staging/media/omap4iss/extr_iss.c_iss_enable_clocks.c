
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int iss_fck; int dev; int iss_ctrlclk; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int iss_enable_clocks(struct iss_device *iss)
{
 int ret;

 ret = clk_enable(iss->iss_fck);
 if (ret) {
  dev_err(iss->dev, "clk_enable iss_fck failed\n");
  return ret;
 }

 ret = clk_enable(iss->iss_ctrlclk);
 if (ret) {
  dev_err(iss->dev, "clk_enable iss_ctrlclk failed\n");
  clk_disable(iss->iss_fck);
  return ret;
 }

 return 0;
}
