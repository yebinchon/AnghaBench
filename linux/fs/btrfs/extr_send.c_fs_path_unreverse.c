
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_path {char* start; char* end; char* buf; scalar_t__ reversed; } ;


 int memmove (char*,char*,int) ;

__attribute__((used)) static void fs_path_unreverse(struct fs_path *p)
{
 char *tmp;
 int len;

 if (!p->reversed)
  return;

 tmp = p->start;
 len = p->end - p->start;
 p->start = p->buf;
 p->end = p->start + len;
 memmove(p->start, tmp, len + 1);
 p->reversed = 0;
}
