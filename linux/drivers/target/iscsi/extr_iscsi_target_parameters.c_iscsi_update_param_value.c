
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_param {int value; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int ) ;
 int kstrdup (char*,int ) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*) ;

int iscsi_update_param_value(struct iscsi_param *param, char *value)
{
 kfree(param->value);

 param->value = kstrdup(value, GFP_KERNEL);
 if (!param->value) {
  pr_err("Unable to allocate memory for value.\n");
  return -ENOMEM;
 }

 pr_debug("iSCSI Parameter updated to %s=%s\n",
   param->name, param->value);
 return 0;
}
