
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilinx_pcie_port {int leg_domain; struct device* dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int CONFIG_PCI_MSI ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ IS_ENABLED (int ) ;
 int XILINX_PCIE_INTR_CFG_TIMEOUT ;
 int XILINX_PCIE_INTR_CORRECTABLE ;
 int XILINX_PCIE_INTR_ECRC_ERR ;
 int XILINX_PCIE_INTR_FATAL ;
 int XILINX_PCIE_INTR_HOT_RESET ;
 int XILINX_PCIE_INTR_INTX ;
 int XILINX_PCIE_INTR_LINK_DOWN ;
 int XILINX_PCIE_INTR_MSI ;
 int XILINX_PCIE_INTR_MST_DECERR ;
 int XILINX_PCIE_INTR_MST_ERRP ;
 int XILINX_PCIE_INTR_MST_SLVERR ;
 int XILINX_PCIE_INTR_NONFATAL ;
 int XILINX_PCIE_INTR_SLV_CMPABT ;
 int XILINX_PCIE_INTR_SLV_COMPL ;
 int XILINX_PCIE_INTR_SLV_ERRP ;
 int XILINX_PCIE_INTR_SLV_ILLBUR ;
 int XILINX_PCIE_INTR_SLV_UNEXP ;
 int XILINX_PCIE_INTR_SLV_UNSUPP ;
 int XILINX_PCIE_INTR_STR_ERR ;
 int XILINX_PCIE_REG_IDR ;
 int XILINX_PCIE_REG_IMR ;
 int XILINX_PCIE_REG_RPIFR1 ;
 int XILINX_PCIE_REG_RPIFR2 ;
 int XILINX_PCIE_RPIFR1_ALL_MASK ;
 int XILINX_PCIE_RPIFR1_INTR_MASK ;
 int XILINX_PCIE_RPIFR1_INTR_SHIFT ;
 int XILINX_PCIE_RPIFR1_INTR_VALID ;
 int XILINX_PCIE_RPIFR1_MSI_INTR ;
 int XILINX_PCIE_RPIFR2_MSG_DATA ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 int generic_handle_irq (int) ;
 int irq_find_mapping (int ,int) ;
 int pcie_read (struct xilinx_pcie_port*,int ) ;
 int pcie_write (struct xilinx_pcie_port*,int,int ) ;
 int xilinx_pcie_clear_err_interrupts (struct xilinx_pcie_port*) ;

__attribute__((used)) static irqreturn_t xilinx_pcie_intr_handler(int irq, void *data)
{
 struct xilinx_pcie_port *port = (struct xilinx_pcie_port *)data;
 struct device *dev = port->dev;
 u32 val, mask, status;


 val = pcie_read(port, XILINX_PCIE_REG_IDR);
 mask = pcie_read(port, XILINX_PCIE_REG_IMR);

 status = val & mask;
 if (!status)
  return IRQ_NONE;

 if (status & XILINX_PCIE_INTR_LINK_DOWN)
  dev_warn(dev, "Link Down\n");

 if (status & XILINX_PCIE_INTR_ECRC_ERR)
  dev_warn(dev, "ECRC failed\n");

 if (status & XILINX_PCIE_INTR_STR_ERR)
  dev_warn(dev, "Streaming error\n");

 if (status & XILINX_PCIE_INTR_HOT_RESET)
  dev_info(dev, "Hot reset\n");

 if (status & XILINX_PCIE_INTR_CFG_TIMEOUT)
  dev_warn(dev, "ECAM access timeout\n");

 if (status & XILINX_PCIE_INTR_CORRECTABLE) {
  dev_warn(dev, "Correctable error message\n");
  xilinx_pcie_clear_err_interrupts(port);
 }

 if (status & XILINX_PCIE_INTR_NONFATAL) {
  dev_warn(dev, "Non fatal error message\n");
  xilinx_pcie_clear_err_interrupts(port);
 }

 if (status & XILINX_PCIE_INTR_FATAL) {
  dev_warn(dev, "Fatal error message\n");
  xilinx_pcie_clear_err_interrupts(port);
 }

 if (status & (XILINX_PCIE_INTR_INTX | XILINX_PCIE_INTR_MSI)) {
  val = pcie_read(port, XILINX_PCIE_REG_RPIFR1);


  if (!(val & XILINX_PCIE_RPIFR1_INTR_VALID)) {
   dev_warn(dev, "RP Intr FIFO1 read error\n");
   goto error;
  }


  if (val & XILINX_PCIE_RPIFR1_MSI_INTR) {
   val = pcie_read(port, XILINX_PCIE_REG_RPIFR2) &
    XILINX_PCIE_RPIFR2_MSG_DATA;
  } else {
   val = (val & XILINX_PCIE_RPIFR1_INTR_MASK) >>
    XILINX_PCIE_RPIFR1_INTR_SHIFT;
   val = irq_find_mapping(port->leg_domain, val);
  }


  pcie_write(port, XILINX_PCIE_RPIFR1_ALL_MASK,
      XILINX_PCIE_REG_RPIFR1);


  if (IS_ENABLED(CONFIG_PCI_MSI) ||
      !(val & XILINX_PCIE_RPIFR1_MSI_INTR))
   generic_handle_irq(val);
 }

 if (status & XILINX_PCIE_INTR_SLV_UNSUPP)
  dev_warn(dev, "Slave unsupported request\n");

 if (status & XILINX_PCIE_INTR_SLV_UNEXP)
  dev_warn(dev, "Slave unexpected completion\n");

 if (status & XILINX_PCIE_INTR_SLV_COMPL)
  dev_warn(dev, "Slave completion timeout\n");

 if (status & XILINX_PCIE_INTR_SLV_ERRP)
  dev_warn(dev, "Slave Error Poison\n");

 if (status & XILINX_PCIE_INTR_SLV_CMPABT)
  dev_warn(dev, "Slave Completer Abort\n");

 if (status & XILINX_PCIE_INTR_SLV_ILLBUR)
  dev_warn(dev, "Slave Illegal Burst\n");

 if (status & XILINX_PCIE_INTR_MST_DECERR)
  dev_warn(dev, "Master decode error\n");

 if (status & XILINX_PCIE_INTR_MST_SLVERR)
  dev_warn(dev, "Master slave error\n");

 if (status & XILINX_PCIE_INTR_MST_ERRP)
  dev_warn(dev, "Master error poison\n");

error:

 pcie_write(port, status, XILINX_PCIE_REG_IDR);

 return IRQ_HANDLED;
}
