
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fw_eq_ofld_cmd {void* eqid_pkd; void* alloc_to_len16; void* op_to_vfn; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_hw {int dummy; } ;
struct csio_eq_params {int eqid; int vfn; int pfn; } ;


 int CSIO_INIT_MBP (struct csio_mb*,struct fw_eq_ofld_cmd*,int ,void*,void (*) (struct csio_hw*,struct csio_mb*),int) ;
 int FW_CMD_EXEC_F ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_EQ_OFLD_CMD ;
 int FW_EQ_OFLD_CMD_EQID_V (int ) ;
 int FW_EQ_OFLD_CMD_FREE_F ;
 int FW_EQ_OFLD_CMD_PFN_V (int ) ;
 int FW_EQ_OFLD_CMD_VFN_V (int ) ;
 void* htonl (int) ;

void
csio_mb_eq_ofld_free(struct csio_hw *hw, struct csio_mb *mbp, void *priv,
       uint32_t mb_tmo, struct csio_eq_params *eq_ofld_params,
       void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 struct fw_eq_ofld_cmd *cmdp = (struct fw_eq_ofld_cmd *)(mbp->mb);

 CSIO_INIT_MBP(mbp, cmdp, mb_tmo, priv, cbfn, 1);

 cmdp->op_to_vfn = htonl(FW_CMD_OP_V(FW_EQ_OFLD_CMD) |
    FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
    FW_EQ_OFLD_CMD_PFN_V(eq_ofld_params->pfn) |
    FW_EQ_OFLD_CMD_VFN_V(eq_ofld_params->vfn));
 cmdp->alloc_to_len16 = htonl(FW_EQ_OFLD_CMD_FREE_F |
    FW_CMD_LEN16_V(sizeof(*cmdp) / 16));
 cmdp->eqid_pkd = htonl(FW_EQ_OFLD_CMD_EQID_V(eq_ofld_params->eqid));

}
