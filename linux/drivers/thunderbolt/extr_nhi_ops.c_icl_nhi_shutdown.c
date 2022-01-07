
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_nhi {int dummy; } ;


 int icl_nhi_force_power (struct tb_nhi*,int) ;

__attribute__((used)) static void icl_nhi_shutdown(struct tb_nhi *nhi)
{
 icl_nhi_force_power(nhi, 0);
}
