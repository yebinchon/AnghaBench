
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ FPGA_Control1_Register ;
 scalar_t__ FPGA_Control2_Register ;
 scalar_t__ FPGA_SCALS_Counter_Register ;
 scalar_t__ FPGA_SCAMS_Counter_Register ;
 scalar_t__ FPGA_SCBLS_Counter_Register ;
 scalar_t__ FPGA_SCBMS_Counter_Register ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pci_6534_init_main_fpga(struct comedi_device *dev)
{
 writel(0, dev->mmio + FPGA_Control1_Register);
 writel(0, dev->mmio + FPGA_Control2_Register);
 writel(0, dev->mmio + FPGA_SCALS_Counter_Register);
 writel(0, dev->mmio + FPGA_SCAMS_Counter_Register);
 writel(0, dev->mmio + FPGA_SCBLS_Counter_Register);
 writel(0, dev->mmio + FPGA_SCBMS_Counter_Register);
}
