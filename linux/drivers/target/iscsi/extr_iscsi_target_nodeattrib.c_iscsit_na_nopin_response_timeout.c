
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iscsi_node_attrib {int nopin_timeout; scalar_t__ nopin_response_timeout; } ;
struct iscsi_node_acl {struct iscsi_node_attrib node_attrib; } ;


 int EINVAL ;
 scalar_t__ NA_NOPIN_RESPONSE_TIMEOUT_MAX ;
 scalar_t__ NA_NOPIN_RESPONSE_TIMEOUT_MIN ;
 int iscsit_na_get_initiatorname (struct iscsi_node_acl*) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;

int iscsit_na_nopin_response_timeout(
 struct iscsi_node_acl *acl,
 u32 nopin_response_timeout)
{
 struct iscsi_node_attrib *a = &acl->node_attrib;

 if (nopin_response_timeout > NA_NOPIN_RESPONSE_TIMEOUT_MAX) {
  pr_err("Requested NopIn Response Timeout %u larger"
   " than maximum %u\n", nopin_response_timeout,
    NA_NOPIN_RESPONSE_TIMEOUT_MAX);
  return -EINVAL;
 } else if (nopin_response_timeout < NA_NOPIN_RESPONSE_TIMEOUT_MIN) {
  pr_err("Requested NopIn Response Timeout %u smaller"
   " than minimum %u\n", nopin_response_timeout,
    NA_NOPIN_RESPONSE_TIMEOUT_MIN);
  return -EINVAL;
 }

 a->nopin_response_timeout = nopin_response_timeout;
 pr_debug("Set NopIn Response Timeout to %u for"
  " Initiator Node %s\n", a->nopin_timeout,
  iscsit_na_get_initiatorname(acl));

 return 0;
}
