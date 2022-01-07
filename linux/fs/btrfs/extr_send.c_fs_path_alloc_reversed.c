
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_path {int reversed; } ;


 struct fs_path* fs_path_alloc () ;
 int fs_path_reset (struct fs_path*) ;

__attribute__((used)) static struct fs_path *fs_path_alloc_reversed(void)
{
 struct fs_path *p;

 p = fs_path_alloc();
 if (!p)
  return ((void*)0);
 p->reversed = 1;
 fs_path_reset(p);
 return p;
}
