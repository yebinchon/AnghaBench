
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_path {scalar_t__ start; scalar_t__ end; } ;


 int fs_path_prepare_for_add (struct fs_path*,scalar_t__,char**) ;
 int memcpy (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int fs_path_add_path(struct fs_path *p, struct fs_path *p2)
{
 int ret;
 char *prepared;

 ret = fs_path_prepare_for_add(p, p2->end - p2->start, &prepared);
 if (ret < 0)
  goto out;
 memcpy(prepared, p2->start, p2->end - p2->start);

out:
 return ret;
}
