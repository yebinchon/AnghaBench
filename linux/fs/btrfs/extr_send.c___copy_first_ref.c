
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct fs_path {int dummy; } ;


 int fs_path_copy (struct fs_path*,struct fs_path*) ;

__attribute__((used)) static int __copy_first_ref(int num, u64 dir, int index,
       struct fs_path *p, void *ctx)
{
 int ret;
 struct fs_path *pt = ctx;

 ret = fs_path_copy(pt, p);
 if (ret < 0)
  return ret;


 return 1;
}
