
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_param {int name; } ;


 int NO ;
 int YES ;
 int pr_err (char*,int ,int ,int ) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int iscsi_check_boolean_value(struct iscsi_param *param, char *value)
{
 if (strcmp(value, YES) && strcmp(value, NO)) {
  pr_err("Illegal value for \"%s\", must be either"
   " \"%s\" or \"%s\".\n", param->name, YES, NO);
  return -1;
 }

 return 0;
}
