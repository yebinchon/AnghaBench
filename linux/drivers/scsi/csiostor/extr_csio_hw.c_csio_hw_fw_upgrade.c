
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u8 ;
struct fw_hdr {int flags; } ;
struct csio_hw {int dummy; } ;
typedef int int32_t ;


 int FW_HDR_FLAGS_RESET_HALT ;
 int csio_hw_fw_dload (struct csio_hw*,int *,int ) ;
 int csio_hw_fw_halt (struct csio_hw*,int ,int ) ;
 int csio_hw_fw_restart (struct csio_hw*,int ,int) ;
 int ntohl (int ) ;

__attribute__((used)) static int
csio_hw_fw_upgrade(struct csio_hw *hw, uint32_t mbox,
    const u8 *fw_data, uint32_t size, int32_t force)
{
 const struct fw_hdr *fw_hdr = (const struct fw_hdr *)fw_data;
 int reset, ret;

 ret = csio_hw_fw_halt(hw, mbox, force);
 if (ret != 0 && !force)
  return ret;

 ret = csio_hw_fw_dload(hw, (uint8_t *) fw_data, size);
 if (ret != 0)
  return ret;
 reset = ((ntohl(fw_hdr->flags) & FW_HDR_FLAGS_RESET_HALT) == 0);
 return csio_hw_fw_restart(hw, mbox, reset);
}
