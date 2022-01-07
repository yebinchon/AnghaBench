
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct fw_caps_config_cmd {int fcoecaps; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;


 int EINVAL ;
 int FW_CAPS_CONFIG_FCOE_CTRL_OFLD ;
 int FW_CAPS_CONFIG_FCOE_INITIATOR ;
 int csio_err (struct csio_hw*,char*) ;
 int ntohs (int ) ;

__attribute__((used)) static int
csio_hw_validate_caps(struct csio_hw *hw, struct csio_mb *mbp)
{
 struct fw_caps_config_cmd *rsp = (struct fw_caps_config_cmd *)mbp->mb;
 uint16_t caps;

 caps = ntohs(rsp->fcoecaps);

 if (!(caps & FW_CAPS_CONFIG_FCOE_INITIATOR)) {
  csio_err(hw, "No FCoE Initiator capability in the firmware.\n");
  return -EINVAL;
 }

 if (!(caps & FW_CAPS_CONFIG_FCOE_CTRL_OFLD)) {
  csio_err(hw, "No FCoE Control Offload capability\n");
  return -EINVAL;
 }

 return 0;
}
