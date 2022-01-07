
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static inline bool is_dfs_link(const char *path)
{
 char *s;

 s = strchr(path + 1, '\\');
 if (!s)
  return 0;
 return !!strchr(s + 1, '\\');
}
