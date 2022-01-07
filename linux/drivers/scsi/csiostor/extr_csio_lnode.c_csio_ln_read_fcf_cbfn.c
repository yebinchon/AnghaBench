
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_fcoe_fcf_cmd {int spma_mac; int fabric; int name_id; int mac; int fc_map; int fpma_to_portid; int op_to_fcfi; int fka_adv; int max_fcoe_size; int vlan_id; int vf_id; int priority_pkd; int retval_len16; } ;
struct csio_mb {scalar_t__ mb; scalar_t__ priv; } ;
struct csio_lnode {struct csio_fcf_info* fcfinfo; } ;
struct csio_hw {int mb_mempool; int lock; } ;
struct csio_fcf_info {int spma_mac; int fabric; int name_id; int mac; int fc_map; int portid; int login; int spma; int fpma; int fcfi; int fka_adv; void* max_fcoe_size; int vlan_id; void* vf_id; int priority; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 int FW_CMD_RETVAL_G (int ) ;
 int FW_FCOE_FCF_CMD_FCFI_GET (int ) ;
 int FW_FCOE_FCF_CMD_FPMA_GET (int ) ;
 int FW_FCOE_FCF_CMD_LOGIN_GET (int ) ;
 int FW_FCOE_FCF_CMD_PORTID_GET (int ) ;
 int FW_FCOE_FCF_CMD_PRIORITY_GET (void*) ;
 int FW_FCOE_FCF_CMD_SPMA_GET (int ) ;
 int FW_SUCCESS ;
 int be32_to_cpu (int ) ;
 int csio_ln_err (struct csio_lnode*,char*,int) ;
 int memcpy (int ,int ,int) ;
 int mempool_free (struct csio_mb*,int ) ;
 int ntohl (int ) ;
 void* ntohs (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
csio_ln_read_fcf_cbfn(struct csio_hw *hw, struct csio_mb *mbp)
{
 struct csio_lnode *ln = (struct csio_lnode *)mbp->priv;
 struct csio_fcf_info *fcf_info;
 struct fw_fcoe_fcf_cmd *rsp =
    (struct fw_fcoe_fcf_cmd *)(mbp->mb);
 enum fw_retval retval;

 retval = FW_CMD_RETVAL_G(ntohl(rsp->retval_len16));
 if (retval != FW_SUCCESS) {
  csio_ln_err(ln, "FCOE FCF cmd failed with ret x%x\n",
    retval);
  mempool_free(mbp, hw->mb_mempool);
  return;
 }

 spin_lock_irq(&hw->lock);
 fcf_info = ln->fcfinfo;
 fcf_info->priority = FW_FCOE_FCF_CMD_PRIORITY_GET(
     ntohs(rsp->priority_pkd));
 fcf_info->vf_id = ntohs(rsp->vf_id);
 fcf_info->vlan_id = rsp->vlan_id;
 fcf_info->max_fcoe_size = ntohs(rsp->max_fcoe_size);
 fcf_info->fka_adv = be32_to_cpu(rsp->fka_adv);
 fcf_info->fcfi = FW_FCOE_FCF_CMD_FCFI_GET(ntohl(rsp->op_to_fcfi));
 fcf_info->fpma = FW_FCOE_FCF_CMD_FPMA_GET(rsp->fpma_to_portid);
 fcf_info->spma = FW_FCOE_FCF_CMD_SPMA_GET(rsp->fpma_to_portid);
 fcf_info->login = FW_FCOE_FCF_CMD_LOGIN_GET(rsp->fpma_to_portid);
 fcf_info->portid = FW_FCOE_FCF_CMD_PORTID_GET(rsp->fpma_to_portid);
 memcpy(fcf_info->fc_map, rsp->fc_map, sizeof(fcf_info->fc_map));
 memcpy(fcf_info->mac, rsp->mac, sizeof(fcf_info->mac));
 memcpy(fcf_info->name_id, rsp->name_id, sizeof(fcf_info->name_id));
 memcpy(fcf_info->fabric, rsp->fabric, sizeof(fcf_info->fabric));
 memcpy(fcf_info->spma_mac, rsp->spma_mac, sizeof(fcf_info->spma_mac));

 spin_unlock_irq(&hw->lock);

 mempool_free(mbp, hw->mb_mempool);
}
