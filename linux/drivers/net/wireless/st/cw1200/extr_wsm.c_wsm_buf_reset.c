
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct wsm_buf {int * begin; int * data; } ;



__attribute__((used)) static void wsm_buf_reset(struct wsm_buf *buf)
{
 if (buf->begin) {
  buf->data = &buf->begin[4];
  *(u32 *)buf->begin = 0;
 } else {
  buf->data = buf->begin;
 }
}
