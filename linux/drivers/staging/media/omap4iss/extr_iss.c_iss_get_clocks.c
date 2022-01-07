
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {void* iss_ctrlclk; int dev; void* iss_fck; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*) ;
 void* devm_clk_get (int ,char*) ;

__attribute__((used)) static int iss_get_clocks(struct iss_device *iss)
{
 iss->iss_fck = devm_clk_get(iss->dev, "iss_fck");
 if (IS_ERR(iss->iss_fck)) {
  dev_err(iss->dev, "Unable to get iss_fck clock info\n");
  return PTR_ERR(iss->iss_fck);
 }

 iss->iss_ctrlclk = devm_clk_get(iss->dev, "iss_ctrlclk");
 if (IS_ERR(iss->iss_ctrlclk)) {
  dev_err(iss->dev, "Unable to get iss_ctrlclk clock info\n");
  return PTR_ERR(iss->iss_ctrlclk);
 }

 return 0;
}
