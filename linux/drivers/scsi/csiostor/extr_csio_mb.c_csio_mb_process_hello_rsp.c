
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fw_hello_cmd {int err_to_clearinit; int fwrev; int retval_len16; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {void* fwrev; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
typedef enum csio_dev_state { ____Placeholder_csio_dev_state } csio_dev_state ;


 int CSIO_DEV_STATE_ERR ;
 int CSIO_DEV_STATE_INIT ;
 int CSIO_DEV_STATE_UNINIT ;
 int FW_CMD_RETVAL_G (void*) ;
 int FW_HELLO_CMD_ERR_F ;
 int FW_HELLO_CMD_INIT_F ;
 int FW_HELLO_CMD_MBMASTER_G (int) ;
 int FW_SUCCESS ;
 void* ntohl (int ) ;

void
csio_mb_process_hello_rsp(struct csio_hw *hw, struct csio_mb *mbp,
     enum fw_retval *retval, enum csio_dev_state *state,
     uint8_t *mpfn)
{
 struct fw_hello_cmd *rsp = (struct fw_hello_cmd *)(mbp->mb);
 uint32_t value;

 *retval = FW_CMD_RETVAL_G(ntohl(rsp->retval_len16));

 if (*retval == FW_SUCCESS) {
  hw->fwrev = ntohl(rsp->fwrev);

  value = ntohl(rsp->err_to_clearinit);
  *mpfn = FW_HELLO_CMD_MBMASTER_G(value);

  if (value & FW_HELLO_CMD_INIT_F)
   *state = CSIO_DEV_STATE_INIT;
  else if (value & FW_HELLO_CMD_ERR_F)
   *state = CSIO_DEV_STATE_ERR;
  else
   *state = CSIO_DEV_STATE_UNINIT;
 }
}
