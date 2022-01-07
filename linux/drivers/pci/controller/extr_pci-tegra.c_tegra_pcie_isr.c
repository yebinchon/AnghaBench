
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct tegra_pcie {struct device* dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int AFI_INTR_CODE ;
 int AFI_INTR_CODE_MASK ;
 size_t AFI_INTR_FPCI_DECODE_ERROR ;
 size_t AFI_INTR_LEGACY ;
 size_t AFI_INTR_MASTER_ABORT ;
 size_t AFI_INTR_PE_PRSNT_SENSE ;
 int AFI_INTR_SIGNATURE ;
 size_t AFI_INTR_TARGET_ABORT ;
 int AFI_UPPER_FPCI_ADDRESS ;
 size_t ARRAY_SIZE (char const**) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int afi_readl (struct tegra_pcie*,int ) ;
 int afi_writel (struct tegra_pcie*,int ,int ) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;

__attribute__((used)) static irqreturn_t tegra_pcie_isr(int irq, void *arg)
{
 const char *err_msg[] = {
  "Unknown",
  "AXI slave error",
  "AXI decode error",
  "Target abort",
  "Master abort",
  "Invalid write",
  "Legacy interrupt",
  "Response decoding error",
  "AXI response decoding error",
  "Transaction timeout",
  "Slot present pin change",
  "Slot clock request change",
  "TMS clock ramp change",
  "TMS ready for power down",
  "Peer2Peer error",
 };
 struct tegra_pcie *pcie = arg;
 struct device *dev = pcie->dev;
 u32 code, signature;

 code = afi_readl(pcie, AFI_INTR_CODE) & AFI_INTR_CODE_MASK;
 signature = afi_readl(pcie, AFI_INTR_SIGNATURE);
 afi_writel(pcie, 0, AFI_INTR_CODE);

 if (code == AFI_INTR_LEGACY)
  return IRQ_NONE;

 if (code >= ARRAY_SIZE(err_msg))
  code = 0;





 if (code == AFI_INTR_MASTER_ABORT || code == AFI_INTR_PE_PRSNT_SENSE)
  dev_dbg(dev, "%s, signature: %08x\n", err_msg[code], signature);
 else
  dev_err(dev, "%s, signature: %08x\n", err_msg[code], signature);

 if (code == AFI_INTR_TARGET_ABORT || code == AFI_INTR_MASTER_ABORT ||
     code == AFI_INTR_FPCI_DECODE_ERROR) {
  u32 fpci = afi_readl(pcie, AFI_UPPER_FPCI_ADDRESS) & 0xff;
  u64 address = (u64)fpci << 32 | (signature & 0xfffffffc);

  if (code == AFI_INTR_MASTER_ABORT)
   dev_dbg(dev, "  FPCI address: %10llx\n", address);
  else
   dev_err(dev, "  FPCI address: %10llx\n", address);
 }

 return IRQ_HANDLED;
}
