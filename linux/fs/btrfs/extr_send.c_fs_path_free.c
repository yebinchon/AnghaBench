
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_path {scalar_t__ buf; scalar_t__ inline_buf; } ;


 int kfree (struct fs_path*) ;

__attribute__((used)) static void fs_path_free(struct fs_path *p)
{
 if (!p)
  return;
 if (p->buf != p->inline_buf)
  kfree(p->buf);
 kfree(p);
}
