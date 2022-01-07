
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_param_list {int dummy; } ;
struct iscsi_param {char* name; } ;


 int IS_SENDER_INITIATOR (struct iscsi_param*) ;
 int IS_SENDER_TARGET (struct iscsi_param*) ;
 scalar_t__ KEY_MAXLEN ;
 int SENDER_INITIATOR ;
 int SENDER_RECEIVER ;
 int SENDER_TARGET ;
 struct iscsi_param* iscsi_find_param_from_key (char*,struct iscsi_param_list*) ;
 int pr_err (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static struct iscsi_param *__iscsi_check_key(
 char *key,
 int sender,
 struct iscsi_param_list *param_list)
{
 struct iscsi_param *param;

 if (strlen(key) > KEY_MAXLEN) {
  pr_err("Length of key name \"%s\" exceeds %d.\n",
   key, KEY_MAXLEN);
  return ((void*)0);
 }

 param = iscsi_find_param_from_key(key, param_list);
 if (!param)
  return ((void*)0);

 if ((sender & SENDER_INITIATOR) && !IS_SENDER_INITIATOR(param)) {
  pr_err("Key \"%s\" may not be sent to %s,"
   " protocol error.\n", param->name,
   (sender & SENDER_RECEIVER) ? "target" : "initiator");
  return ((void*)0);
 }

 if ((sender & SENDER_TARGET) && !IS_SENDER_TARGET(param)) {
  pr_err("Key \"%s\" may not be sent to %s,"
   " protocol error.\n", param->name,
   (sender & SENDER_RECEIVER) ? "initiator" : "target");
  return ((void*)0);
 }

 return param;
}
