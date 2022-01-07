
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_pcie_port {struct device* dev; } ;
struct device {int dummy; } ;


 int XILINX_PCIE_IDR_ALL_MASK ;
 int XILINX_PCIE_IMR_ALL_MASK ;
 int XILINX_PCIE_IMR_ENABLE_MASK ;
 int XILINX_PCIE_REG_IDR ;
 int XILINX_PCIE_REG_IMR ;
 int XILINX_PCIE_REG_RPSC ;
 int XILINX_PCIE_REG_RPSC_BEN ;
 int dev_info (struct device*,char*) ;
 int pcie_read (struct xilinx_pcie_port*,int ) ;
 int pcie_write (struct xilinx_pcie_port*,int,int ) ;
 scalar_t__ xilinx_pcie_link_up (struct xilinx_pcie_port*) ;

__attribute__((used)) static void xilinx_pcie_init_port(struct xilinx_pcie_port *port)
{
 struct device *dev = port->dev;

 if (xilinx_pcie_link_up(port))
  dev_info(dev, "PCIe Link is UP\n");
 else
  dev_info(dev, "PCIe Link is DOWN\n");


 pcie_write(port, ~XILINX_PCIE_IDR_ALL_MASK,
     XILINX_PCIE_REG_IMR);


 pcie_write(port, pcie_read(port, XILINX_PCIE_REG_IDR) &
    XILINX_PCIE_IMR_ALL_MASK,
     XILINX_PCIE_REG_IDR);


 pcie_write(port, XILINX_PCIE_IMR_ENABLE_MASK, XILINX_PCIE_REG_IMR);


 pcie_write(port, pcie_read(port, XILINX_PCIE_REG_RPSC) |
    XILINX_PCIE_REG_RPSC_BEN,
     XILINX_PCIE_REG_RPSC);
}
