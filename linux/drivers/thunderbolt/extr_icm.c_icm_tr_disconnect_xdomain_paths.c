
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_xdomain {int dummy; } ;
struct tb {int dummy; } ;


 int icm_tr_xdomain_tear_down (struct tb*,struct tb_xdomain*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int icm_tr_disconnect_xdomain_paths(struct tb *tb, struct tb_xdomain *xd)
{
 int ret;

 ret = icm_tr_xdomain_tear_down(tb, xd, 1);
 if (ret)
  return ret;

 usleep_range(10, 50);
 return icm_tr_xdomain_tear_down(tb, xd, 2);
}
