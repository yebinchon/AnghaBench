
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_scm_vmperm {int perm; int vmid; } ;
struct q6v5 {int need_mem_protection; } ;
typedef int phys_addr_t ;


 int ALIGN (size_t,int ) ;
 int BIT (int ) ;
 int QCOM_SCM_PERM_RW ;
 int QCOM_SCM_PERM_RWX ;
 int QCOM_SCM_VMID_HLOS ;
 int QCOM_SCM_VMID_MSS_MSA ;
 int SZ_4K ;
 int qcom_scm_assign_mem (int ,int ,int*,struct qcom_scm_vmperm*,int) ;

__attribute__((used)) static int q6v5_xfer_mem_ownership(struct q6v5 *qproc, int *current_perm,
       bool remote_owner, phys_addr_t addr,
       size_t size)
{
 struct qcom_scm_vmperm next;

 if (!qproc->need_mem_protection)
  return 0;
 if (remote_owner && *current_perm == BIT(QCOM_SCM_VMID_MSS_MSA))
  return 0;
 if (!remote_owner && *current_perm == BIT(QCOM_SCM_VMID_HLOS))
  return 0;

 next.vmid = remote_owner ? QCOM_SCM_VMID_MSS_MSA : QCOM_SCM_VMID_HLOS;
 next.perm = remote_owner ? QCOM_SCM_PERM_RW : QCOM_SCM_PERM_RWX;

 return qcom_scm_assign_mem(addr, ALIGN(size, SZ_4K),
       current_perm, &next, 1);
}
