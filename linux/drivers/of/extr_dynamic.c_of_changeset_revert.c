
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_changeset {int dummy; } ;


 int __of_changeset_revert (struct of_changeset*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_mutex ;

int of_changeset_revert(struct of_changeset *ocs)
{
 int ret;

 mutex_lock(&of_mutex);
 ret = __of_changeset_revert(ocs);
 mutex_unlock(&of_mutex);

 return ret;
}
