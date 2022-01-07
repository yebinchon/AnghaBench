
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_path {int buf_len; scalar_t__* start; scalar_t__* end; scalar_t__* buf; scalar_t__ reversed; } ;



__attribute__((used)) static void fs_path_reset(struct fs_path *p)
{
 if (p->reversed) {
  p->start = p->buf + p->buf_len - 1;
  p->end = p->start;
  *p->start = 0;
 } else {
  p->start = p->buf;
  p->end = p->start;
  *p->start = 0;
 }
}
