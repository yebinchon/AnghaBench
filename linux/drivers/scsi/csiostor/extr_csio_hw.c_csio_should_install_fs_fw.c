
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csio_hw {int dummy; } ;


 int FW_HDR_FW_VER_BUILD_G (int) ;
 int FW_HDR_FW_VER_MAJOR_G (int) ;
 int FW_HDR_FW_VER_MICRO_G (int) ;
 int FW_HDR_FW_VER_MINOR_G (int) ;
 int csio_err (struct csio_hw*,char*,int ,int ,int ,int ,char const*,int ,int ,int ,int ) ;

__attribute__((used)) static int csio_should_install_fs_fw(struct csio_hw *hw, int card_fw_usable,
    int k, int c)
{
 const char *reason;

 if (!card_fw_usable) {
  reason = "incompatible or unusable";
  goto install;
 }

 if (k > c) {
  reason = "older than the version supported with this driver";
  goto install;
 }

 return 0;

install:
 csio_err(hw, "firmware on card (%u.%u.%u.%u) is %s, "
  "installing firmware %u.%u.%u.%u on card.\n",
  FW_HDR_FW_VER_MAJOR_G(c), FW_HDR_FW_VER_MINOR_G(c),
  FW_HDR_FW_VER_MICRO_G(c), FW_HDR_FW_VER_BUILD_G(c), reason,
  FW_HDR_FW_VER_MAJOR_G(k), FW_HDR_FW_VER_MINOR_G(k),
  FW_HDR_FW_VER_MICRO_G(k), FW_HDR_FW_VER_BUILD_G(k));

 return 1;
}
