
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iscsi_tpg_attrib {scalar_t__ login_timeout; } ;
struct iscsi_portal_group {int tpgt; struct iscsi_tpg_attrib tpg_attrib; } ;


 int EINVAL ;
 scalar_t__ TA_LOGIN_TIMEOUT_MAX ;
 scalar_t__ TA_LOGIN_TIMEOUT_MIN ;
 int pr_debug (char*,scalar_t__,int ) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;

int iscsit_ta_login_timeout(
 struct iscsi_portal_group *tpg,
 u32 login_timeout)
{
 struct iscsi_tpg_attrib *a = &tpg->tpg_attrib;

 if (login_timeout > TA_LOGIN_TIMEOUT_MAX) {
  pr_err("Requested Login Timeout %u larger than maximum"
   " %u\n", login_timeout, TA_LOGIN_TIMEOUT_MAX);
  return -EINVAL;
 } else if (login_timeout < TA_LOGIN_TIMEOUT_MIN) {
  pr_err("Requested Logout Timeout %u smaller than"
   " minimum %u\n", login_timeout, TA_LOGIN_TIMEOUT_MIN);
  return -EINVAL;
 }

 a->login_timeout = login_timeout;
 pr_debug("Set Logout Timeout to %u for Target Portal Group"
  " %hu\n", a->login_timeout, tpg->tpgt);

 return 0;
}
