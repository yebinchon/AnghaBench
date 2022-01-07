
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cachefiles_cache {char* tag; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int _enter (char*,char*) ;
 char* kstrdup (char*,int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int cachefiles_daemon_tag(struct cachefiles_cache *cache, char *args)
{
 char *tag;

 _enter(",%s", args);

 if (!*args) {
  pr_err("Empty tag specified\n");
  return -EINVAL;
 }

 if (cache->tag)
  return -EEXIST;

 tag = kstrdup(args, GFP_KERNEL);
 if (!tag)
  return -ENOMEM;

 cache->tag = tag;
 return 0;
}
