
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgsl_struct {scalar_t__ magic; } ;


 scalar_t__ MGSL_MAGIC ;
 int printk (char const*,char*,char const*) ;

__attribute__((used)) static inline int mgsl_paranoia_check(struct mgsl_struct *info,
     char *name, const char *routine)
{
 if (!info)
  return 1;

 return 0;
}
