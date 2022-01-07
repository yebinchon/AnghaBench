
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_nhi {int dummy; } ;


 int ICL_LC_MAILBOX_TIMEOUT ;
 int ICL_LC_PREPARE_FOR_RESET ;
 int icl_nhi_force_power (struct tb_nhi*,int) ;
 scalar_t__ icl_nhi_is_device_connected (struct tb_nhi*) ;
 int icl_nhi_lc_mailbox_cmd (struct tb_nhi*,int ) ;
 int icl_nhi_lc_mailbox_cmd_complete (struct tb_nhi*,int ) ;

__attribute__((used)) static int icl_nhi_suspend(struct tb_nhi *nhi)
{
 int ret;

 if (icl_nhi_is_device_connected(nhi))
  return 0;






 icl_nhi_lc_mailbox_cmd(nhi, ICL_LC_PREPARE_FOR_RESET);
 ret = icl_nhi_lc_mailbox_cmd_complete(nhi, ICL_LC_MAILBOX_TIMEOUT);
 if (ret)
  return ret;

 return icl_nhi_force_power(nhi, 0);
}
