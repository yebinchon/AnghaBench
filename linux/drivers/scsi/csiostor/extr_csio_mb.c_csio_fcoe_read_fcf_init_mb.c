
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fw_fcoe_fcf_cmd {void* retval_len16; void* op_to_fcfi; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_lnode {int dummy; } ;


 int CSIO_INIT_MBP (struct csio_mb*,struct fw_fcoe_fcf_cmd*,int ,struct csio_lnode*,void (*) (struct csio_hw*,struct csio_mb*),int) ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_READ_F ;
 int FW_CMD_REQUEST_F ;
 int FW_FCOE_FCF_CMD ;
 int FW_FCOE_FCF_CMD_FCFI (int ) ;
 void* htonl (int) ;

void
csio_fcoe_read_fcf_init_mb(struct csio_lnode *ln, struct csio_mb *mbp,
  uint32_t mb_tmo, uint32_t portid, uint32_t fcfi,
  void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 struct fw_fcoe_fcf_cmd *cmdp =
   (struct fw_fcoe_fcf_cmd *)(mbp->mb);

 CSIO_INIT_MBP(mbp, cmdp, mb_tmo, ln, cbfn, 1);

 cmdp->op_to_fcfi = htonl(FW_CMD_OP_V(FW_FCOE_FCF_CMD) |
     FW_CMD_REQUEST_F |
     FW_CMD_READ_F |
     FW_FCOE_FCF_CMD_FCFI(fcfi));
 cmdp->retval_len16 = htonl(FW_CMD_LEN16_V(sizeof(*cmdp) / 16));

}
