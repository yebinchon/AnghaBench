
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {int dummy; } ;


 int EINVAL ;
 int _enter (char*,char*) ;
 int _leave (char*) ;
 unsigned long cachefiles_debug ;
 int pr_err (char*) ;
 unsigned long simple_strtoul (char*,char**,int ) ;

__attribute__((used)) static int cachefiles_daemon_debug(struct cachefiles_cache *cache, char *args)
{
 unsigned long mask;

 _enter(",%s", args);

 mask = simple_strtoul(args, &args, 0);
 if (args[0] != '\0')
  goto inval;

 cachefiles_debug = mask;
 _leave(" = 0");
 return 0;

inval:
 pr_err("debug command requires mask\n");
 return -EINVAL;
}
