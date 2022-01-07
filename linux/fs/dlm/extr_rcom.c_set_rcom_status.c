
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rcom_status {int rs_flags; } ;
struct dlm_ls {int dummy; } ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static void set_rcom_status(struct dlm_ls *ls, struct rcom_status *rs,
       uint32_t flags)
{
 rs->rs_flags = cpu_to_le32(flags);
}
