
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iscsi_node_attrib {scalar_t__ dataout_timeout_retries; } ;
struct iscsi_node_acl {struct iscsi_node_attrib node_attrib; } ;


 int EINVAL ;
 scalar_t__ NA_DATAOUT_TIMEOUT_RETRIES_MAX ;
 scalar_t__ NA_DATAOUT_TIMEOUT_RETRIES_MIN ;
 int iscsit_na_get_initiatorname (struct iscsi_node_acl*) ;
 int pr_debug (char*,scalar_t__,int ) ;
 int pr_err (char*,scalar_t__,scalar_t__) ;

int iscsit_na_dataout_timeout_retries(
 struct iscsi_node_acl *acl,
 u32 dataout_timeout_retries)
{
 struct iscsi_node_attrib *a = &acl->node_attrib;

 if (dataout_timeout_retries > NA_DATAOUT_TIMEOUT_RETRIES_MAX) {
  pr_err("Requested DataOut Timeout Retries %u larger"
   " than maximum %u", dataout_timeout_retries,
    NA_DATAOUT_TIMEOUT_RETRIES_MAX);
  return -EINVAL;
 } else if (dataout_timeout_retries < NA_DATAOUT_TIMEOUT_RETRIES_MIN) {
  pr_err("Requested DataOut Timeout Retries %u smaller"
   " than minimum %u", dataout_timeout_retries,
    NA_DATAOUT_TIMEOUT_RETRIES_MIN);
  return -EINVAL;
 }

 a->dataout_timeout_retries = dataout_timeout_retries;
 pr_debug("Set DataOut Timeout Retries to %u for"
  " Initiator Node %s\n", a->dataout_timeout_retries,
  iscsit_na_get_initiatorname(acl));

 return 0;
}
