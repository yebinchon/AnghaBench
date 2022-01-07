
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_reconfig_data {int dn; } ;
struct of_changeset_entry {int action; int np; int old_prop; int prop; } ;
typedef int rd ;


 int EINVAL ;





 int __of_changeset_entry_invert (struct of_changeset_entry*,struct of_changeset_entry*) ;
 int memset (struct of_reconfig_data*,int ,int) ;
 int of_property_notify (int,int,int ,int ) ;
 int of_reconfig_notify (int,struct of_reconfig_data*) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int __of_changeset_entry_notify(struct of_changeset_entry *ce,
  bool revert)
{
 struct of_reconfig_data rd;
 struct of_changeset_entry ce_inverted;
 int ret = 0;

 if (revert) {
  __of_changeset_entry_invert(ce, &ce_inverted);
  ce = &ce_inverted;
 }

 switch (ce->action) {
 case 131:
 case 130:
  memset(&rd, 0, sizeof(rd));
  rd.dn = ce->np;
  ret = of_reconfig_notify(ce->action, &rd);
  break;
 case 132:
 case 129:
 case 128:
  ret = of_property_notify(ce->action, ce->np, ce->prop, ce->old_prop);
  break;
 default:
  pr_err("invalid devicetree changeset action: %i\n",
   (int)ce->action);
  ret = -EINVAL;
 }

 if (ret)
  pr_err("changeset notifier error @%pOF\n", ce->np);
 return ret;
}
