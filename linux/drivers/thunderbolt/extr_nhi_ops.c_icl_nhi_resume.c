
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_nhi {int dummy; } ;


 int icl_nhi_force_power (struct tb_nhi*,int) ;
 int icl_nhi_set_ltr (struct tb_nhi*) ;

__attribute__((used)) static int icl_nhi_resume(struct tb_nhi *nhi)
{
 int ret;

 ret = icl_nhi_force_power(nhi, 1);
 if (ret)
  return ret;

 icl_nhi_set_ltr(nhi);
 return 0;
}
