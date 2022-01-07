
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strlen (char*) ;
 int strncasecmp (char const*,char*,int ) ;

__attribute__((used)) static inline bool is_sysvol_or_netlogon(const char *path)
{
 const char *s;
 char sep = path[0];

 s = strchr(path + 1, sep) + 1;
 return !strncasecmp(s, "sysvol", strlen("sysvol")) ||
  !strncasecmp(s, "netlogon", strlen("netlogon"));
}
