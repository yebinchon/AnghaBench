
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 char* kstrndup (char const*,int,int ) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static inline char *get_dfs_root(const char *path)
{
 char *s, *npath;

 s = strchr(path + 1, '\\');
 if (!s)
  return ERR_PTR(-EINVAL);

 s = strchr(s + 1, '\\');
 if (!s)
  return ERR_PTR(-EINVAL);

 npath = kstrndup(path, s - path, GFP_KERNEL);
 if (!npath)
  return ERR_PTR(-ENOMEM);

 return npath;
}
