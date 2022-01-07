
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hwparams4; int hwparams6; int hwparams1; } ;
struct dwc3 {scalar_t__ revision; int is_fpga; int regs; scalar_t__ u2exit_lfps_quirk; scalar_t__ disable_scramble_quirk; int dev; TYPE_1__ hwparams; int nr_scratch; int dr_mode; } ;


 int DWC3_GCTL ;
 int DWC3_GCTL_DISSCRAMBLE ;
 int DWC3_GCTL_DSBLCLKGTNG ;
 int DWC3_GCTL_GBLHIBERNATIONEN ;
 int DWC3_GCTL_SCALEDOWN_MASK ;
 int DWC3_GCTL_SOFITPSYNC ;
 int DWC3_GCTL_U2EXIT_LFPS ;
 int DWC3_GCTL_U2RSTECN ;
 int DWC3_GHWPARAMS1_EN_PWROPT (int ) ;


 int DWC3_GHWPARAMS4_HIBER_SCRATCHBUFS (int) ;
 int DWC3_GHWPARAMS6_EN_FPGA ;
 scalar_t__ DWC3_REVISION_190A ;
 scalar_t__ DWC3_REVISION_210A ;
 scalar_t__ DWC3_REVISION_250A ;
 int USB_DR_MODE_HOST ;
 int USB_DR_MODE_OTG ;
 int WARN_ONCE (int,char*) ;
 int dev_info (int ,char*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;

__attribute__((used)) static void dwc3_core_setup_global_control(struct dwc3 *dwc)
{
 u32 hwparams4 = dwc->hwparams.hwparams4;
 u32 reg;

 reg = dwc3_readl(dwc->regs, DWC3_GCTL);
 reg &= ~DWC3_GCTL_SCALEDOWN_MASK;

 switch (DWC3_GHWPARAMS1_EN_PWROPT(dwc->hwparams.hwparams1)) {
 case 129:
  if ((dwc->dr_mode == USB_DR_MODE_HOST ||
    dwc->dr_mode == USB_DR_MODE_OTG) &&
    (dwc->revision >= DWC3_REVISION_210A &&
    dwc->revision <= DWC3_REVISION_250A))
   reg |= DWC3_GCTL_DSBLCLKGTNG | DWC3_GCTL_SOFITPSYNC;
  else
   reg &= ~DWC3_GCTL_DSBLCLKGTNG;
  break;
 case 128:

  dwc->nr_scratch = DWC3_GHWPARAMS4_HIBER_SCRATCHBUFS(hwparams4);





  reg |= DWC3_GCTL_GBLHIBERNATIONEN;
  break;
 default:

  break;
 }


 if (dwc->hwparams.hwparams6 & DWC3_GHWPARAMS6_EN_FPGA) {
  dev_info(dwc->dev, "Running with FPGA optimizations\n");
  dwc->is_fpga = 1;
 }

 WARN_ONCE(dwc->disable_scramble_quirk && !dwc->is_fpga,
   "disable_scramble cannot be used on non-FPGA builds\n");

 if (dwc->disable_scramble_quirk && dwc->is_fpga)
  reg |= DWC3_GCTL_DISSCRAMBLE;
 else
  reg &= ~DWC3_GCTL_DISSCRAMBLE;

 if (dwc->u2exit_lfps_quirk)
  reg |= DWC3_GCTL_U2EXIT_LFPS;







 if (dwc->revision < DWC3_REVISION_190A)
  reg |= DWC3_GCTL_U2RSTECN;

 dwc3_writel(dwc->regs, DWC3_GCTL, reg);
}
