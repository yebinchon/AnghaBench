
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc2_hsotg {int ll_hw_enabled; } ;


 int __dwc2_lowlevel_hw_enable (struct dwc2_hsotg*) ;

int dwc2_lowlevel_hw_enable(struct dwc2_hsotg *hsotg)
{
 int ret = __dwc2_lowlevel_hw_enable(hsotg);

 if (ret == 0)
  hsotg->ll_hw_enabled = 1;
 return ret;
}
