
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_path {int reversed; } ;


 int fs_path_add_path (struct fs_path*,struct fs_path*) ;
 int fs_path_reset (struct fs_path*) ;

__attribute__((used)) static int fs_path_copy(struct fs_path *p, struct fs_path *from)
{
 int ret;

 p->reversed = from->reversed;
 fs_path_reset(p);

 ret = fs_path_add_path(p, from);

 return ret;
}
