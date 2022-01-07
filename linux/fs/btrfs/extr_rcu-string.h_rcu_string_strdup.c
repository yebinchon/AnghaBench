
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_string {int str; } ;
typedef int gfp_t ;


 struct rcu_string* kzalloc (int,int ) ;
 int strlen (char const*) ;
 int strncpy (int ,char const*,size_t) ;

__attribute__((used)) static inline struct rcu_string *rcu_string_strdup(const char *src, gfp_t mask)
{
 size_t len = strlen(src) + 1;
 struct rcu_string *ret = kzalloc(sizeof(struct rcu_string) +
      (len * sizeof(char)), mask);
 if (!ret)
  return ret;
 strncpy(ret->str, src, len);
 return ret;
}
