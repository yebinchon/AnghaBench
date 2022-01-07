
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_path {int buf_len; int inline_buf; int buf; scalar_t__ reversed; } ;


 int FS_PATH_INLINE_SIZE ;
 int GFP_KERNEL ;
 int fs_path_reset (struct fs_path*) ;
 struct fs_path* kmalloc (int,int ) ;

__attribute__((used)) static struct fs_path *fs_path_alloc(void)
{
 struct fs_path *p;

 p = kmalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return ((void*)0);
 p->reversed = 0;
 p->buf = p->inline_buf;
 p->buf_len = FS_PATH_INLINE_SIZE;
 fs_path_reset(p);
 return p;
}
