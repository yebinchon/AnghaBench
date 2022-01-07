
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef void* uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {int linkattr32; int lstatus32_to_cbllen32; } ;
struct TYPE_5__ {int lstatus_to_modtype; } ;
struct TYPE_7__ {TYPE_2__ info32; TYPE_1__ info; } ;
struct fw_port_cmd {TYPE_3__ u; int action_to_len16; int op_to_portid; } ;
struct csio_hw {TYPE_4__* pport; } ;
typedef void* fw_port_cap32_t ;
typedef int __be64 ;
struct TYPE_8__ {scalar_t__ mod_type; scalar_t__ link_status; int link_speed; } ;


 int EINVAL ;
 scalar_t__ FW_DEBUG_CMD ;
 scalar_t__ FW_PORT_ACTION_GET_PORT_INFO ;
 scalar_t__ FW_PORT_ACTION_GET_PORT_INFO32 ;
 scalar_t__ FW_PORT_CMD ;
 scalar_t__ FW_PORT_CMD_ACTION_G (void*) ;
 scalar_t__ FW_PORT_CMD_LSTATUS32_G (void*) ;
 scalar_t__ FW_PORT_CMD_LSTATUS_G (void*) ;
 scalar_t__ FW_PORT_CMD_MODTYPE32_G (void*) ;
 scalar_t__ FW_PORT_CMD_MODTYPE_G (void*) ;
 scalar_t__ FW_PORT_CMD_PORTID_G (void*) ;
 int csio_dbg (struct csio_hw*,char*,scalar_t__) ;
 int csio_err (struct csio_hw*,char*,scalar_t__) ;
 int csio_info (struct csio_hw*,char*,scalar_t__,char*) ;
 int csio_mb_dump_fw_dbg (struct csio_hw*,int *) ;
 int csio_mb_portmod_changed (struct csio_hw*,scalar_t__) ;
 int fwcap_to_fwspeed (void*) ;
 void* lstatus_to_fwcap (void*) ;
 void* ntohl (int ) ;

int
csio_mb_fwevt_handler(struct csio_hw *hw, __be64 *cmd)
{
 uint8_t opcode = *(uint8_t *)cmd;
 struct fw_port_cmd *pcmd;
 uint8_t port_id;
 uint32_t link_status;
 uint16_t action;
 uint8_t mod_type;
 fw_port_cap32_t linkattr;

 if (opcode == FW_PORT_CMD) {
  pcmd = (struct fw_port_cmd *)cmd;
  port_id = FW_PORT_CMD_PORTID_G(
    ntohl(pcmd->op_to_portid));
  action = FW_PORT_CMD_ACTION_G(
    ntohl(pcmd->action_to_len16));
  if (action != FW_PORT_ACTION_GET_PORT_INFO &&
      action != FW_PORT_ACTION_GET_PORT_INFO32) {
   csio_err(hw, "Unhandled FW_PORT_CMD action: %u\n",
    action);
   return -EINVAL;
  }

  if (action == FW_PORT_ACTION_GET_PORT_INFO) {
   link_status = ntohl(pcmd->u.info.lstatus_to_modtype);
   mod_type = FW_PORT_CMD_MODTYPE_G(link_status);
   linkattr = lstatus_to_fwcap(link_status);

   hw->pport[port_id].link_status =
    FW_PORT_CMD_LSTATUS_G(link_status);
  } else {
   link_status =
    ntohl(pcmd->u.info32.lstatus32_to_cbllen32);
   mod_type = FW_PORT_CMD_MODTYPE32_G(link_status);
   linkattr = ntohl(pcmd->u.info32.linkattr32);

   hw->pport[port_id].link_status =
    FW_PORT_CMD_LSTATUS32_G(link_status);
  }

  hw->pport[port_id].link_speed = fwcap_to_fwspeed(linkattr);

  csio_info(hw, "Port:%x - LINK %s\n", port_id,
   hw->pport[port_id].link_status ? "UP" : "DOWN");

  if (mod_type != hw->pport[port_id].mod_type) {
   hw->pport[port_id].mod_type = mod_type;
   csio_mb_portmod_changed(hw, port_id);
  }
 } else if (opcode == FW_DEBUG_CMD) {
  csio_mb_dump_fw_dbg(hw, cmd);
 } else {
  csio_dbg(hw, "Gen MB can't handle op:0x%x on evtq.\n", opcode);
  return -EINVAL;
 }

 return 0;
}
