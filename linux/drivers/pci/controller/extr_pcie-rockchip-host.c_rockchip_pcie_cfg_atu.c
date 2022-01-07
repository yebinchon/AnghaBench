
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie {int mem_size; int io_size; scalar_t__ mem_bus_addr; scalar_t__ msg_bus_addr; scalar_t__ io_bus_addr; struct device* dev; } ;
struct device {int dummy; } ;


 int AXI_WRAPPER_IO_WRITE ;
 int AXI_WRAPPER_MEM_WRITE ;
 int AXI_WRAPPER_NOR_MSG ;
 int AXI_WRAPPER_TYPE0_CFG ;
 int dev_err (struct device*,char*) ;
 int rockchip_pcie_cfg_configuration_accesses (struct rockchip_pcie*,int ) ;
 int rockchip_pcie_prog_ib_atu (struct rockchip_pcie*,int,int,int,int ) ;
 int rockchip_pcie_prog_ob_atu (struct rockchip_pcie*,int,int ,int,scalar_t__,int ) ;

__attribute__((used)) static int rockchip_pcie_cfg_atu(struct rockchip_pcie *rockchip)
{
 struct device *dev = rockchip->dev;
 int offset;
 int err;
 int reg_no;

 rockchip_pcie_cfg_configuration_accesses(rockchip,
       AXI_WRAPPER_TYPE0_CFG);

 for (reg_no = 0; reg_no < (rockchip->mem_size >> 20); reg_no++) {
  err = rockchip_pcie_prog_ob_atu(rockchip, reg_no + 1,
      AXI_WRAPPER_MEM_WRITE,
      20 - 1,
      rockchip->mem_bus_addr +
      (reg_no << 20),
      0);
  if (err) {
   dev_err(dev, "program RC mem outbound ATU failed\n");
   return err;
  }
 }

 err = rockchip_pcie_prog_ib_atu(rockchip, 2, 32 - 1, 0x0, 0);
 if (err) {
  dev_err(dev, "program RC mem inbound ATU failed\n");
  return err;
 }

 offset = rockchip->mem_size >> 20;
 for (reg_no = 0; reg_no < (rockchip->io_size >> 20); reg_no++) {
  err = rockchip_pcie_prog_ob_atu(rockchip,
      reg_no + 1 + offset,
      AXI_WRAPPER_IO_WRITE,
      20 - 1,
      rockchip->io_bus_addr +
      (reg_no << 20),
      0);
  if (err) {
   dev_err(dev, "program RC io outbound ATU failed\n");
   return err;
  }
 }


 rockchip_pcie_prog_ob_atu(rockchip, reg_no + 1 + offset,
      AXI_WRAPPER_NOR_MSG,
      20 - 1, 0, 0);

 rockchip->msg_bus_addr = rockchip->mem_bus_addr +
     ((reg_no + offset) << 20);
 return err;
}
