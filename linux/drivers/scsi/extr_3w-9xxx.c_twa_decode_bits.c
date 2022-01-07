
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {scalar_t__ device; } ;
struct TYPE_5__ {int reset_print; int host; int flags; TYPE_3__* tw_pci_dev; } ;
typedef TYPE_1__ TW_Device_Extension ;


 scalar_t__ PCI_DEVICE_ID_3WARE_9650SE ;
 scalar_t__ PCI_DEVICE_ID_3WARE_9690SA ;
 int PCI_STATUS ;
 int TW_CONTROL_CLEAR_PARITY_ERROR ;
 int TW_CONTROL_CLEAR_PCI_ABORT ;
 int TW_CONTROL_CLEAR_QUEUE_ERROR ;
 int TW_CONTROL_REG_ADDR (TYPE_1__*) ;
 int TW_DRIVER ;
 int TW_IN_RESET ;
 int TW_PCI_CLEAR_PCI_ABORT ;
 int TW_PRINTK (int ,int ,int,char*) ;
 int TW_STATUS_MICROCONTROLLER_ERROR ;
 int TW_STATUS_PCI_ABORT ;
 int TW_STATUS_PCI_PARITY_ERROR ;
 int TW_STATUS_QUEUE_ERROR ;
 int pci_write_config_word (TYPE_3__*,int ,int ) ;
 int test_bit (int ,int *) ;
 int writel (int ,int ) ;

__attribute__((used)) static int twa_decode_bits(TW_Device_Extension *tw_dev, u32 status_reg_value)
{
 int retval = 1;


 if (status_reg_value & TW_STATUS_PCI_PARITY_ERROR) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0xc, "PCI Parity Error: clearing");
  writel(TW_CONTROL_CLEAR_PARITY_ERROR, TW_CONTROL_REG_ADDR(tw_dev));
 }

 if (status_reg_value & TW_STATUS_PCI_ABORT) {
  TW_PRINTK(tw_dev->host, TW_DRIVER, 0xd, "PCI Abort: clearing");
  writel(TW_CONTROL_CLEAR_PCI_ABORT, TW_CONTROL_REG_ADDR(tw_dev));
  pci_write_config_word(tw_dev->tw_pci_dev, PCI_STATUS, TW_PCI_CLEAR_PCI_ABORT);
 }

 if (status_reg_value & TW_STATUS_QUEUE_ERROR) {
  if (((tw_dev->tw_pci_dev->device != PCI_DEVICE_ID_3WARE_9650SE) &&
       (tw_dev->tw_pci_dev->device != PCI_DEVICE_ID_3WARE_9690SA)) ||
      (!test_bit(TW_IN_RESET, &tw_dev->flags)))
   TW_PRINTK(tw_dev->host, TW_DRIVER, 0xe, "Controller Queue Error: clearing");
  writel(TW_CONTROL_CLEAR_QUEUE_ERROR, TW_CONTROL_REG_ADDR(tw_dev));
 }

 if (status_reg_value & TW_STATUS_MICROCONTROLLER_ERROR) {
  if (tw_dev->reset_print == 0) {
   TW_PRINTK(tw_dev->host, TW_DRIVER, 0x10, "Microcontroller Error: clearing");
   tw_dev->reset_print = 1;
  }
  goto out;
 }
 retval = 0;
out:
 return retval;
}
