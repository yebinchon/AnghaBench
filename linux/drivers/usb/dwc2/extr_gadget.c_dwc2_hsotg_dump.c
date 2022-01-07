
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc2_hsotg {int num_of_eps; struct device* dev; } ;
struct device {int dummy; } ;


 int DCFG ;
 int DCTL ;
 int DIEPCTL (int) ;
 int DIEPDMA (int) ;
 int DIEPMSK ;
 int DIEPTSIZ (int) ;
 int DOEPCTL (int) ;
 int DOEPDMA (int) ;
 int DOEPTSIZ (int) ;
 int DPTXFSIZN (int) ;
 int DVBUSDIS ;
 int DVBUSPULSE ;
 int FIFOSIZE_DEPTH_SHIFT ;
 int FIFOSIZE_STARTADDR_MASK ;
 int GAHBCFG ;
 int GHWCFG1 ;
 int GNPTXFSIZ ;
 int GRXFSIZ ;
 int dev_info (struct device*,char*,int,int,...) ;
 int dwc2_readl (struct dwc2_hsotg*,int ) ;

__attribute__((used)) static void dwc2_hsotg_dump(struct dwc2_hsotg *hsotg)
{
}
