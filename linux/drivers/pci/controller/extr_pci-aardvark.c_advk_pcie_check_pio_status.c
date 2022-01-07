
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device {int dummy; } ;
struct advk_pcie {TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int PIO_ADDR_LS ;


 int PIO_COMPLETION_STATUS_MASK ;
 int PIO_COMPLETION_STATUS_SHIFT ;

 int PIO_NON_POSTED_REQ ;
 int PIO_STAT ;
 int advk_readl (struct advk_pcie*,int ) ;
 int dev_err (struct device*,char*,char*,char*,int,int) ;

__attribute__((used)) static void advk_pcie_check_pio_status(struct advk_pcie *pcie)
{
 struct device *dev = &pcie->pdev->dev;
 u32 reg;
 unsigned int status;
 char *strcomp_status, *str_posted;

 reg = advk_readl(pcie, PIO_STAT);
 status = (reg & PIO_COMPLETION_STATUS_MASK) >>
  PIO_COMPLETION_STATUS_SHIFT;

 if (!status)
  return;

 switch (status) {
 case 128:
  strcomp_status = "UR";
  break;
 case 129:
  strcomp_status = "CRS";
  break;
 case 130:
  strcomp_status = "CA";
  break;
 default:
  strcomp_status = "Unknown";
  break;
 }

 if (reg & PIO_NON_POSTED_REQ)
  str_posted = "Non-posted";
 else
  str_posted = "Posted";

 dev_err(dev, "%s PIO Response Status: %s, %#x @ %#x\n",
  str_posted, strcomp_status, reg, advk_readl(pcie, PIO_ADDR_LS));
}
