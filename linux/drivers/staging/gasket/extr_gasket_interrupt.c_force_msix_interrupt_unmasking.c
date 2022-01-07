
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef int u32 ;
struct gasket_dev {TYPE_1__* interrupt_data; } ;
struct TYPE_2__ {int num_configured; int interrupt_bar_index; } ;


 scalar_t__ APEX_BAR2_REG_KERNEL_HIB_MSIX_TABLE ;
 scalar_t__ MSIX_MASK_BIT_OFFSET ;
 int MSIX_VECTOR_SIZE ;
 int gasket_dev_read_32 (struct gasket_dev*,int ,scalar_t__) ;
 int gasket_dev_write_32 (struct gasket_dev*,int ,int ,scalar_t__) ;

__attribute__((used)) static void force_msix_interrupt_unmasking(struct gasket_dev *gasket_dev)
{
 int i;



 for (i = 0; i < gasket_dev->interrupt_data->num_configured; i++) {

  ulong location = 0x46800 +
     12 + i * 16;
  u32 mask =
   gasket_dev_read_32(gasket_dev,
        gasket_dev->interrupt_data->interrupt_bar_index,
        location);
  if (!(mask & 1))
   continue;

  gasket_dev_write_32(gasket_dev, 0,
        gasket_dev->interrupt_data->interrupt_bar_index,
        location);
 }



}
