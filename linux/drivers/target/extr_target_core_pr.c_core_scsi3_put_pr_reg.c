
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_pr_registration {int pr_res_holders; } ;


 int atomic_dec_mb (int *) ;

__attribute__((used)) static void core_scsi3_put_pr_reg(struct t10_pr_registration *pr_reg)
{
 atomic_dec_mb(&pr_reg->pr_res_holders);
}
