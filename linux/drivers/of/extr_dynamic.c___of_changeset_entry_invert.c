
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_changeset_entry {int action; int prop; int old_prop; } ;







 int memcpy (struct of_changeset_entry*,struct of_changeset_entry*,int) ;

__attribute__((used)) static void __of_changeset_entry_invert(struct of_changeset_entry *ce,
       struct of_changeset_entry *rce)
{
 memcpy(rce, ce, sizeof(*rce));

 switch (ce->action) {
 case 131:
  rce->action = 130;
  break;
 case 130:
  rce->action = 131;
  break;
 case 132:
  rce->action = 129;
  break;
 case 129:
  rce->action = 132;
  break;
 case 128:
  rce->old_prop = ce->prop;
  rce->prop = ce->old_prop;

  if (!rce->prop) {
   rce->action = 129;
   rce->prop = ce->prop;
  }
  break;
 }
}
