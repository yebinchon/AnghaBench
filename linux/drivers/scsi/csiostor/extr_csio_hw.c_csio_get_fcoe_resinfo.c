
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_fcoe_res_info_cmd {int used_vnps; int used_fcfs; int max_vnps; int max_fcfs; int used_ssns; int used_xchgs; int max_ssns; int max_xchgs; int r_r_tov; int r_a_tov_els; int r_a_tov_seq; int e_d_tov; int retval_len16; } ;
struct csio_mb {scalar_t__ mb; } ;
struct csio_fcoe_res_info {void* max_xchgs; void* max_ssns; void* used_vnps; void* used_fcfs; void* max_vnps; void* max_fcfs; void* used_ssns; void* used_xchgs; void* r_r_tov; void* r_a_tov_els; void* r_a_tov_seq; void* e_d_tov; } ;
struct csio_hw {int mb_mempool; struct csio_fcoe_res_info fres_info; } ;
typedef enum fw_retval { ____Placeholder_fw_retval } fw_retval ;


 int CSIO_INC_STATS (struct csio_hw*,int ) ;
 int CSIO_MB_DEFAULT_TMO ;
 int EINVAL ;
 int ENOMEM ;
 int FW_CMD_RETVAL_G (void*) ;
 int FW_SUCCESS ;
 int GFP_ATOMIC ;
 int csio_dbg (struct csio_hw*,char*,void*,void*) ;
 int csio_err (struct csio_hw*,char*,...) ;
 int csio_fcoe_read_res_info_init_mb (struct csio_hw*,struct csio_mb*,int ,int *) ;
 scalar_t__ csio_mb_issue (struct csio_hw*,struct csio_mb*) ;
 struct csio_mb* mempool_alloc (int ,int ) ;
 int mempool_free (struct csio_mb*,int ) ;
 int n_err_nomem ;
 void* ntohl (int ) ;
 void* ntohs (int ) ;

__attribute__((used)) static int
csio_get_fcoe_resinfo(struct csio_hw *hw)
{
 struct csio_fcoe_res_info *res_info = &hw->fres_info;
 struct fw_fcoe_res_info_cmd *rsp;
 struct csio_mb *mbp;
 enum fw_retval retval;

 mbp = mempool_alloc(hw->mb_mempool, GFP_ATOMIC);
 if (!mbp) {
  CSIO_INC_STATS(hw, n_err_nomem);
  return -ENOMEM;
 }


 csio_fcoe_read_res_info_init_mb(hw, mbp, CSIO_MB_DEFAULT_TMO, ((void*)0));

 if (csio_mb_issue(hw, mbp)) {
  csio_err(hw, "failed to issue FW_FCOE_RES_INFO_CMD\n");
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 rsp = (struct fw_fcoe_res_info_cmd *)(mbp->mb);
 retval = FW_CMD_RETVAL_G(ntohl(rsp->retval_len16));
 if (retval != FW_SUCCESS) {
  csio_err(hw, "FW_FCOE_RES_INFO_CMD failed with ret x%x\n",
    retval);
  mempool_free(mbp, hw->mb_mempool);
  return -EINVAL;
 }

 res_info->e_d_tov = ntohs(rsp->e_d_tov);
 res_info->r_a_tov_seq = ntohs(rsp->r_a_tov_seq);
 res_info->r_a_tov_els = ntohs(rsp->r_a_tov_els);
 res_info->r_r_tov = ntohs(rsp->r_r_tov);
 res_info->max_xchgs = ntohl(rsp->max_xchgs);
 res_info->max_ssns = ntohl(rsp->max_ssns);
 res_info->used_xchgs = ntohl(rsp->used_xchgs);
 res_info->used_ssns = ntohl(rsp->used_ssns);
 res_info->max_fcfs = ntohl(rsp->max_fcfs);
 res_info->max_vnps = ntohl(rsp->max_vnps);
 res_info->used_fcfs = ntohl(rsp->used_fcfs);
 res_info->used_vnps = ntohl(rsp->used_vnps);

 csio_dbg(hw, "max ssns:%d max xchgs:%d\n", res_info->max_ssns,
        res_info->max_xchgs);
 mempool_free(mbp, hw->mb_mempool);

 return 0;
}
