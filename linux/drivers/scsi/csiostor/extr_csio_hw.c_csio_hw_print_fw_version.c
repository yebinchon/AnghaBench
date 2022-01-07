
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int fwrev; } ;


 int FW_HDR_FW_VER_BUILD_G (int ) ;
 int FW_HDR_FW_VER_MAJOR_G (int ) ;
 int FW_HDR_FW_VER_MICRO_G (int ) ;
 int FW_HDR_FW_VER_MINOR_G (int ) ;
 int csio_info (struct csio_hw*,char*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
csio_hw_print_fw_version(struct csio_hw *hw, char *str)
{
 csio_info(hw, "%s: %u.%u.%u.%u\n", str,
      FW_HDR_FW_VER_MAJOR_G(hw->fwrev),
      FW_HDR_FW_VER_MINOR_G(hw->fwrev),
      FW_HDR_FW_VER_MICRO_G(hw->fwrev),
      FW_HDR_FW_VER_BUILD_G(hw->fwrev));
}
