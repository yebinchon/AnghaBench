
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_pr_registration {int pr_res_type; } ;


 int PR_TYPE_EXCLUSIVE_ACCESS_ALLREG ;
 int PR_TYPE_WRITE_EXCLUSIVE_ALLREG ;

__attribute__((used)) static int is_reservation_holder(
 struct t10_pr_registration *pr_res_holder,
 struct t10_pr_registration *pr_reg)
{
 int pr_res_type;

 if (pr_res_holder) {
  pr_res_type = pr_res_holder->pr_res_type;

  return pr_res_holder == pr_reg ||
         pr_res_type == PR_TYPE_WRITE_EXCLUSIVE_ALLREG ||
         pr_res_type == PR_TYPE_EXCLUSIVE_ACCESS_ALLREG;
 }
 return 0;
}
