
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct gasket_interrupt_data {int num_interrupts; int pack_width; TYPE_1__* interrupts; int interrupt_bar_index; } ;
struct gasket_dev {int dev; struct gasket_interrupt_data* interrupt_data; } ;
struct TYPE_2__ {int index; int packing; int reg; } ;






 int UNPACKED ;
 int dev_dbg (int ,char*,...) ;
 int gasket_dev_read_64 (struct gasket_dev*,int ,int ) ;
 int gasket_dev_write_64 (struct gasket_dev*,int,int ,int ) ;

__attribute__((used)) static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
{
 int i;
 int pack_shift;
 ulong mask;
 ulong value;
 struct gasket_interrupt_data *interrupt_data =
  gasket_dev->interrupt_data;

 if (!interrupt_data) {
  dev_dbg(gasket_dev->dev, "Interrupt data is not initialized\n");
  return;
 }

 dev_dbg(gasket_dev->dev, "Running interrupt setup\n");



 for (i = 0; i < interrupt_data->num_interrupts; i++) {





  dev_dbg(gasket_dev->dev,
   "Setting up interrupt index %d with index 0x%llx and packing %d\n",
   interrupt_data->interrupts[i].index,
   interrupt_data->interrupts[i].reg,
   interrupt_data->interrupts[i].packing);
  if (interrupt_data->interrupts[i].packing == UNPACKED) {
   value = interrupt_data->interrupts[i].index;
  } else {
   switch (interrupt_data->interrupts[i].packing) {
   case 131:
    pack_shift = 0;
    break;
   case 130:
    pack_shift = interrupt_data->pack_width;
    break;
   case 129:
    pack_shift = 2 * interrupt_data->pack_width;
    break;
   case 128:
    pack_shift = 3 * interrupt_data->pack_width;
    break;
   default:
    dev_dbg(gasket_dev->dev,
     "Found interrupt description with unknown enum %d\n",
     interrupt_data->interrupts[i].packing);
    return;
   }

   mask = ~(0xFFFF << pack_shift);
   value = gasket_dev_read_64(gasket_dev,
         interrupt_data->interrupt_bar_index,
         interrupt_data->interrupts[i].reg);
   value &= mask;
   value |= interrupt_data->interrupts[i].index
     << pack_shift;
  }
  gasket_dev_write_64(gasket_dev, value,
        interrupt_data->interrupt_bar_index,
        interrupt_data->interrupts[i].reg);
 }
}
