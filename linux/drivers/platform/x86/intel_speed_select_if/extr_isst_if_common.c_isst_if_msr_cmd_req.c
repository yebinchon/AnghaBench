
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct isst_if_msr_cmd {scalar_t__ logical_cpu; int data; int msr; scalar_t__ read_write; } ;


 int CAP_SYS_ADMIN ;
 long EINVAL ;
 long EPERM ;
 int capable (int ) ;
 int isst_store_cmd (int ,int ,scalar_t__,int ,int ,int ) ;
 int match_punit_msr_white_list (int ) ;
 scalar_t__ nr_cpu_ids ;
 int rdmsrl_safe_on_cpu (scalar_t__,int ,int *) ;
 int wrmsrl_safe_on_cpu (scalar_t__,int ,int ) ;

__attribute__((used)) static long isst_if_msr_cmd_req(u8 *cmd_ptr, int *write_only, int resume)
{
 struct isst_if_msr_cmd *msr_cmd;
 int ret;

 msr_cmd = (struct isst_if_msr_cmd *)cmd_ptr;

 if (!match_punit_msr_white_list(msr_cmd->msr))
  return -EINVAL;

 if (msr_cmd->logical_cpu >= nr_cpu_ids)
  return -EINVAL;

 if (msr_cmd->read_write) {
  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;

  ret = wrmsrl_safe_on_cpu(msr_cmd->logical_cpu,
      msr_cmd->msr,
      msr_cmd->data);
  *write_only = 1;
  if (!ret && !resume)
   ret = isst_store_cmd(0, msr_cmd->msr,
          msr_cmd->logical_cpu,
          0, 0, msr_cmd->data);
 } else {
  u64 data;

  ret = rdmsrl_safe_on_cpu(msr_cmd->logical_cpu,
      msr_cmd->msr, &data);
  if (!ret) {
   msr_cmd->data = data;
   *write_only = 0;
  }
 }


 return ret;
}
