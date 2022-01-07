
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_buf {int * end; int data; int begin; } ;


 int kfree (int ) ;

void wsm_buf_deinit(struct wsm_buf *buf)
{
 kfree(buf->begin);
 buf->begin = buf->data = buf->end = ((void*)0);
}
