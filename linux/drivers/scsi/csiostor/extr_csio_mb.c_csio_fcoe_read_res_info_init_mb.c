
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fw_fcoe_res_info_cmd {void* retval_len16; void* op_to_read; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;


 int CSIO_INIT_MBP (struct csio_mb*,struct fw_fcoe_res_info_cmd*,int ,struct csio_hw*,void (*) (struct csio_hw*,struct csio_mb*),int) ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_FCOE_RES_INFO_CMD ;
 void* htonl (int) ;

void
csio_fcoe_read_res_info_init_mb(struct csio_hw *hw, struct csio_mb *mbp,
   uint32_t mb_tmo,
   void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 struct fw_fcoe_res_info_cmd *cmdp =
   (struct fw_fcoe_res_info_cmd *)(mbp->mb);

 CSIO_INIT_MBP(mbp, cmdp, mb_tmo, hw, cbfn, 1);

 cmdp->op_to_read = htonl((FW_CMD_OP_V(FW_FCOE_RES_INFO_CMD) |
      FW_CMD_REQUEST_F |
      FW_CMD_READ_F));

 cmdp->retval_len16 = htonl(FW_CMD_LEN16_V(sizeof(*cmdp) / 16));

}
