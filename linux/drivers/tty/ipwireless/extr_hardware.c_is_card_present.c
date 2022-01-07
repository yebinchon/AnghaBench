
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw_hardware {scalar_t__ hw_version; TYPE_1__* memory_info_regs; scalar_t__ base_port; } ;
struct TYPE_2__ {int memreg_card_present; } ;


 scalar_t__ CARD_PRESENT_VALUE ;
 scalar_t__ HW_VERSION_1 ;
 scalar_t__ IOIR ;
 int inw (scalar_t__) ;
 scalar_t__ readl (int *) ;

__attribute__((used)) static int is_card_present(struct ipw_hardware *hw)
{
 if (hw->hw_version == HW_VERSION_1)
  return inw(hw->base_port + IOIR) != 0xFFFF;
 else
  return readl(&hw->memory_info_regs->memreg_card_present) ==
      CARD_PRESENT_VALUE;
}
