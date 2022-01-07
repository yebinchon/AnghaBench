
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {int dummy; } ;


 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static int cachefiles_daemon_range_error(struct cachefiles_cache *cache,
      char *args)
{
 pr_err("Free space limits must be in range 0%%<=stop<cull<run<100%%\n");

 return -EINVAL;
}
