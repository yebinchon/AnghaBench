
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iscsi_node_attrib {scalar_t__ dataout_timeout; } ;
struct iscsi_node_acl {struct iscsi_node_attrib node_attrib; } ;


 int EINVAL ;
 scalar_t__ NA_DATAOUT_TIMEOUT_MAX ;
 scalar_t__ NA_DATAOUT_TIMEOUT_MIX ;
 int iscsit_na_get_initiatorname (struct iscsi_node_acl*) ;
 int pr_debug (char*,scalar_t__,int ) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;

int iscsit_na_dataout_timeout(
 struct iscsi_node_acl *acl,
 u32 dataout_timeout)
{
 struct iscsi_node_attrib *a = &acl->node_attrib;

 if (dataout_timeout > NA_DATAOUT_TIMEOUT_MAX) {
  pr_err("Requested DataOut Timeout %u larger than"
   " maximum %u\n", dataout_timeout,
   NA_DATAOUT_TIMEOUT_MAX);
  return -EINVAL;
 } else if (dataout_timeout < NA_DATAOUT_TIMEOUT_MIX) {
  pr_err("Requested DataOut Timeout %u smaller than"
   " minimum %u\n", dataout_timeout,
   NA_DATAOUT_TIMEOUT_MIX);
  return -EINVAL;
 }

 a->dataout_timeout = dataout_timeout;
 pr_debug("Set DataOut Timeout to %u for Initiator Node"
  " %s\n", a->dataout_timeout, iscsit_na_get_initiatorname(acl));

 return 0;
}
