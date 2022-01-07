
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_buffer {scalar_t__ current_length; int * current_line; struct sccb_header* sccb; } ;
struct sccb_header {int length; } ;
struct msg_buf {int dummy; } ;


 int MAX_SCCB_ROOM ;

int
sclp_buffer_space(struct sclp_buffer *buffer)
{
 struct sccb_header *sccb;
 int count;

 sccb = buffer->sccb;
 count = MAX_SCCB_ROOM - sccb->length;
 if (buffer->current_line != ((void*)0))
  count -= sizeof(struct msg_buf) + buffer->current_length;
 return count;
}
