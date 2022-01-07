
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsg_common {scalar_t__ fsg; } ;


 int ERROR (struct fsg_common*,char*,char const*,unsigned int) ;
 int WARN_ON (int) ;

__attribute__((used)) static inline int __fsg_is_set(struct fsg_common *common,
          const char *func, unsigned line)
{
 if (common->fsg)
  return 1;
 ERROR(common, "common->fsg is NULL in %s at %u\n", func, line);
 WARN_ON(1);
 return 0;
}
