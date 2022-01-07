
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fw_iq_cmd {void* fl1id; void* fl0id; void* iqid; void* type_to_iqandstindex; void* alloc_to_len16; void* op_to_vfn; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_iq_params {int fl1id; int fl0id; int iqid; int type; int vfn; int pfn; } ;
struct csio_hw {int dummy; } ;


 int CSIO_INIT_MBP (struct csio_mb*,struct fw_iq_cmd*,int ,void*,void (*) (struct csio_hw*,struct csio_mb*),int) ;
 int FW_CMD_EXEC_F ;
 int FW_CMD_LEN16_V (int) ;
 int FW_CMD_OP_V (int ) ;
 int FW_CMD_REQUEST_F ;
 int FW_IQ_CMD ;
 int FW_IQ_CMD_FREE_F ;
 int FW_IQ_CMD_PFN_V (int ) ;
 int FW_IQ_CMD_TYPE_V (int ) ;
 int FW_IQ_CMD_VFN_V (int ) ;
 void* htonl (int) ;
 void* htons (int ) ;

void
csio_mb_iq_free(struct csio_hw *hw, struct csio_mb *mbp, void *priv,
  uint32_t mb_tmo, struct csio_iq_params *iq_params,
  void (*cbfn) (struct csio_hw *, struct csio_mb *))
{
 struct fw_iq_cmd *cmdp = (struct fw_iq_cmd *)(mbp->mb);

 CSIO_INIT_MBP(mbp, cmdp, mb_tmo, priv, cbfn, 1);

 cmdp->op_to_vfn = htonl(FW_CMD_OP_V(FW_IQ_CMD) |
    FW_CMD_REQUEST_F | FW_CMD_EXEC_F |
    FW_IQ_CMD_PFN_V(iq_params->pfn) |
    FW_IQ_CMD_VFN_V(iq_params->vfn));
 cmdp->alloc_to_len16 = htonl(FW_IQ_CMD_FREE_F |
    FW_CMD_LEN16_V(sizeof(*cmdp) / 16));
 cmdp->type_to_iqandstindex = htonl(FW_IQ_CMD_TYPE_V(iq_params->type));

 cmdp->iqid = htons(iq_params->iqid);
 cmdp->fl0id = htons(iq_params->fl0id);
 cmdp->fl1id = htons(iq_params->fl1id);

}
