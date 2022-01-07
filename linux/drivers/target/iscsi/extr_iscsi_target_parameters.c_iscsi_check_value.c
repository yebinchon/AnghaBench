
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_param {char* name; char* type; } ;


 int IFMARKINT ;
 int IRRELEVANT ;
 int IS_PSTATE_PROPOSER (struct iscsi_param*) ;
 scalar_t__ IS_TYPE_BOOL_AND (struct iscsi_param*) ;
 scalar_t__ IS_TYPE_BOOL_OR (struct iscsi_param*) ;
 scalar_t__ IS_TYPE_NUMBER (struct iscsi_param*) ;
 scalar_t__ IS_TYPE_STRING (struct iscsi_param*) ;
 scalar_t__ IS_TYPE_VALUE_LIST (struct iscsi_param*) ;
 int NOTUNDERSTOOD ;
 int OFMARKINT ;
 int REJECT ;
 int SET_PSTATE_IRRELEVANT (struct iscsi_param*) ;
 int SET_PSTATE_REJECT (struct iscsi_param*) ;
 int VALUE_MAXLEN ;
 scalar_t__ iscsi_check_boolean_value (struct iscsi_param*,char*) ;
 scalar_t__ iscsi_check_numerical_value (struct iscsi_param*,char*) ;
 scalar_t__ iscsi_check_string_or_list_value (struct iscsi_param*,char*) ;
 int pr_debug (char*,char*,char*) ;
 int pr_err (char*,char*,...) ;
 char* strchr (char*,char) ;
 int strcmp (char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static int iscsi_check_value(struct iscsi_param *param, char *value)
{
 char *comma_ptr = ((void*)0);

 if (!strcmp(value, REJECT)) {
  if (!strcmp(param->name, IFMARKINT) ||
      !strcmp(param->name, OFMARKINT)) {




   SET_PSTATE_REJECT(param);
   return 0;
  }
  pr_err("Received %s=%s\n", param->name, value);
  return -1;
 }
 if (!strcmp(value, IRRELEVANT)) {
  pr_debug("Received %s=%s\n", param->name, value);
  SET_PSTATE_IRRELEVANT(param);
  return 0;
 }
 if (!strcmp(value, NOTUNDERSTOOD)) {
  if (!IS_PSTATE_PROPOSER(param)) {
   pr_err("Received illegal offer %s=%s\n",
    param->name, value);
   return -1;
  }


  pr_err("Standard iSCSI key \"%s\" cannot be answered"
   " with \"%s\", protocol error.\n", param->name, value);
  return -1;
 }

 do {
  comma_ptr = ((void*)0);
  comma_ptr = strchr(value, ',');

  if (comma_ptr && !IS_TYPE_VALUE_LIST(param)) {
   pr_err("Detected value separator \",\", but"
    " key \"%s\" does not allow a value list,"
    " protocol error.\n", param->name);
   return -1;
  }
  if (comma_ptr)
   *comma_ptr = '\0';

  if (strlen(value) > VALUE_MAXLEN) {
   pr_err("Value for key \"%s\" exceeds %d,"
    " protocol error.\n", param->name,
    VALUE_MAXLEN);
   return -1;
  }

  if (IS_TYPE_BOOL_AND(param) || IS_TYPE_BOOL_OR(param)) {
   if (iscsi_check_boolean_value(param, value) < 0)
    return -1;
  } else if (IS_TYPE_NUMBER(param)) {
   if (iscsi_check_numerical_value(param, value) < 0)
    return -1;
  } else if (IS_TYPE_STRING(param) || IS_TYPE_VALUE_LIST(param)) {
   if (iscsi_check_string_or_list_value(param, value) < 0)
    return -1;
  } else {
   pr_err("Huh? 0x%02x\n", param->type);
   return -1;
  }

  if (comma_ptr)
   *comma_ptr++ = ',';

  value = comma_ptr;
 } while (value);

 return 0;
}
