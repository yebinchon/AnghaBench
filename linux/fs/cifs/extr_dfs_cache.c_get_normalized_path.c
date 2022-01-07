
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int GFP_KERNEL ;
 int convert_delimiter (char*,char) ;
 char* kstrndup (char const*,int ,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static inline int get_normalized_path(const char *path, char **npath)
{
 if (*path == '\\') {
  *npath = (char *)path;
 } else {
  *npath = kstrndup(path, strlen(path), GFP_KERNEL);
  if (!*npath)
   return -ENOMEM;
  convert_delimiter(*npath, '\\');
 }
 return 0;
}
