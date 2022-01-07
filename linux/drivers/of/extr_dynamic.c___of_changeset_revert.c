
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_changeset {int dummy; } ;


 int __of_changeset_revert_entries (struct of_changeset*,int*) ;
 int __of_changeset_revert_notify (struct of_changeset*) ;

__attribute__((used)) static int __of_changeset_revert(struct of_changeset *ocs)
{
 int ret, ret_reply;

 ret_reply = 0;
 ret = __of_changeset_revert_entries(ocs, &ret_reply);

 if (!ret)
  ret = __of_changeset_revert_notify(ocs);

 return ret;
}
