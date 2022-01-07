
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {char* rootdirname; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _enter (char*,char*) ;
 char* kstrdup (char*,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int cachefiles_daemon_dir(struct cachefiles_cache *cache, char *args)
{
 char *dir;

 _enter(",%s", args);

 if (!*args) {
  pr_err("Empty directory specified\n");
  return -EINVAL;
 }

 if (cache->rootdirname) {
  pr_err("Second cache directory specified\n");
  return -EEXIST;
 }

 dir = kstrdup(args, GFP_KERNEL);
 if (!dir)
  return -ENOMEM;

 cache->rootdirname = dir;
 return 0;
}
