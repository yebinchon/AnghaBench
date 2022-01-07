
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_reconfig_data {TYPE_1__* prop; int dn; } ;
struct TYPE_2__ {int name; } ;







 int * action_names ;
 int blocking_notifier_call_chain (int *,unsigned long,struct of_reconfig_data*) ;
 int notifier_to_errno (int) ;
 int of_reconfig_chain ;
 int pr_debug (char*,int ,int ,...) ;

int of_reconfig_notify(unsigned long action, struct of_reconfig_data *p)
{
 int rc;
 rc = blocking_notifier_call_chain(&of_reconfig_chain, action, p);
 return notifier_to_errno(rc);
}
