
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_pcie_port {struct device* dev; } ;
struct device {int dummy; } ;


 int XILINX_PCIE_REG_RPEFR ;
 int XILINX_PCIE_RPEFR_ALL_MASK ;
 unsigned long XILINX_PCIE_RPEFR_ERR_VALID ;
 unsigned long XILINX_PCIE_RPEFR_REQ_ID ;
 int dev_dbg (struct device*,char*,unsigned long) ;
 unsigned long pcie_read (struct xilinx_pcie_port*,int ) ;
 int pcie_write (struct xilinx_pcie_port*,int ,int ) ;

__attribute__((used)) static void xilinx_pcie_clear_err_interrupts(struct xilinx_pcie_port *port)
{
 struct device *dev = port->dev;
 unsigned long val = pcie_read(port, XILINX_PCIE_REG_RPEFR);

 if (val & XILINX_PCIE_RPEFR_ERR_VALID) {
  dev_dbg(dev, "Requester ID %lu\n",
   val & XILINX_PCIE_RPEFR_REQ_ID);
  pcie_write(port, XILINX_PCIE_RPEFR_ALL_MASK,
      XILINX_PCIE_REG_RPEFR);
 }
}
