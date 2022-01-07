
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_path {int dummy; } ;


 int fs_path_prepare_for_add (struct fs_path*,int,char**) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int fs_path_add(struct fs_path *p, const char *name, int name_len)
{
 int ret;
 char *prepared;

 ret = fs_path_prepare_for_add(p, name_len, &prepared);
 if (ret < 0)
  goto out;
 memcpy(prepared, name, name_len);

out:
 return ret;
}
