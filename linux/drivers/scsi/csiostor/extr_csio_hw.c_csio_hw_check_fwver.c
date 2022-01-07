
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_hw {scalar_t__ fwrev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int CSIO_HW_CHIP_MASK ;
 scalar_t__ CSIO_MIN_T6_FW ;
 int csio_hw_print_fw_version (struct csio_hw*,char*) ;
 scalar_t__ csio_is_t6 (int) ;

__attribute__((used)) static int csio_hw_check_fwver(struct csio_hw *hw)
{
 if (csio_is_t6(hw->pdev->device & CSIO_HW_CHIP_MASK) &&
     (hw->fwrev < CSIO_MIN_T6_FW)) {
  csio_hw_print_fw_version(hw, "T6 unsupported fw");
  return -1;
 }

 return 0;
}
