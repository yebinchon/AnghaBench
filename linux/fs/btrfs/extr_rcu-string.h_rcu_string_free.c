
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_string {int dummy; } ;


 int kfree_rcu (struct rcu_string*,int ) ;
 int rcu ;

__attribute__((used)) static inline void rcu_string_free(struct rcu_string *str)
{
 if (str)
  kfree_rcu(str, rcu);
}
