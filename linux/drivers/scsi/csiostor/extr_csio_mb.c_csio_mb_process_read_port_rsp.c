
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int u32 ;
struct TYPE_5__ {int acaps32; int pcaps32; } ;
struct TYPE_4__ {int acap; int pcap; } ;
struct TYPE_6__ {TYPE_2__ info32; TYPE_1__ info; } ;
struct fw_port_cmd {TYPE_3__ u; int action_to_len16; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 scalar_t__ FW_CAPS16 ;
 int FW_CMD_RETVAL_G (int ) ;
 int FW_SUCCESS ;
 int be32_to_cpu (int ) ;
 int fwcaps16_to_caps32 (int ) ;
 int ntohl (int ) ;
 int ntohs (int ) ;

void
csio_mb_process_read_port_rsp(struct csio_hw *hw, struct csio_mb *mbp,
    enum fw_retval *retval, uint16_t fw_caps,
    u32 *pcaps, u32 *acaps)
{
 struct fw_port_cmd *rsp = (struct fw_port_cmd *)(mbp->mb);

 *retval = FW_CMD_RETVAL_G(ntohl(rsp->action_to_len16));

 if (*retval == FW_SUCCESS) {
  if (fw_caps == FW_CAPS16) {
   *pcaps = fwcaps16_to_caps32(ntohs(rsp->u.info.pcap));
   *acaps = fwcaps16_to_caps32(ntohs(rsp->u.info.acap));
  } else {
   *pcaps = be32_to_cpu(rsp->u.info32.pcaps32);
   *acaps = be32_to_cpu(rsp->u.info32.acaps32);
  }
 }
}
