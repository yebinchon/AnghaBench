
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_iq_cmd {int fl1id; int fl0id; int iqid; int physiqid; int alloc_to_len16; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_iq_params {void* fl1id; void* fl0id; void* iqid; void* physiqid; } ;
struct csio_hw {int dummy; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 int FW_CMD_RETVAL_G (int ) ;
 int FW_SUCCESS ;
 int ntohl (int ) ;
 void* ntohs (int ) ;

void
csio_mb_iq_alloc_write_rsp(struct csio_hw *hw, struct csio_mb *mbp,
      enum fw_retval *ret_val,
      struct csio_iq_params *iq_params)
{
 struct fw_iq_cmd *rsp = (struct fw_iq_cmd *)(mbp->mb);

 *ret_val = FW_CMD_RETVAL_G(ntohl(rsp->alloc_to_len16));
 if (*ret_val == FW_SUCCESS) {
  iq_params->physiqid = ntohs(rsp->physiqid);
  iq_params->iqid = ntohs(rsp->iqid);
  iq_params->fl0id = ntohs(rsp->fl0id);
  iq_params->fl1id = ntohs(rsp->fl1id);
 } else {
  iq_params->physiqid = iq_params->iqid =
  iq_params->fl0id = iq_params->fl1id = 0;
 }
}
