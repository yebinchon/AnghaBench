
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef int u32 ;
struct fw_params_cmd {int retval_len16; TYPE_1__* param; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;
typedef int __be32 ;
struct TYPE_2__ {int val; } ;


 int FW_CMD_RETVAL_G (int ) ;
 int FW_SUCCESS ;
 int ntohl (int ) ;

void
csio_mb_process_read_params_rsp(struct csio_hw *hw, struct csio_mb *mbp,
      enum fw_retval *retval, unsigned int nparams,
      u32 *val)
{
 struct fw_params_cmd *rsp = (struct fw_params_cmd *)(mbp->mb);
 uint32_t i;
 __be32 *p = &rsp->param[0].val;

 *retval = FW_CMD_RETVAL_G(ntohl(rsp->retval_len16));

 if (*retval == FW_SUCCESS)
  for (i = 0; i < nparams; i++, p += 2)
   *val++ = ntohl(*p);
}
