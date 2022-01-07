
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_changeset_entry {int dummy; } ;


 int __of_changeset_entry_apply (struct of_changeset_entry*) ;
 int __of_changeset_entry_invert (struct of_changeset_entry*,struct of_changeset_entry*) ;

__attribute__((used)) static inline int __of_changeset_entry_revert(struct of_changeset_entry *ce)
{
 struct of_changeset_entry ce_inverted;

 __of_changeset_entry_invert(ce, &ce_inverted);
 return __of_changeset_entry_apply(&ce_inverted);
}
