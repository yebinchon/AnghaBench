
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sclp_buffer {struct msg_buf* current_msg; scalar_t__ current_length; int * current_line; int char_sum; int messages; struct sccb_header* sccb; } ;
struct sccb_header {int length; } ;
struct TYPE_8__ {scalar_t__ length; } ;
struct TYPE_6__ {int length; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_7__ {TYPE_2__ mto; TYPE_1__ header; } ;
struct msg_buf {TYPE_4__ header; TYPE_3__ mdb; } ;



__attribute__((used)) static void
sclp_finalize_mto(struct sclp_buffer *buffer)
{
 struct sccb_header *sccb;
 struct msg_buf *msg;





 sccb = buffer->sccb;
 msg = buffer->current_msg;
 msg->header.length += buffer->current_length;
 msg->mdb.header.length += buffer->current_length;
 msg->mdb.mto.length += buffer->current_length;
 sccb->length += msg->header.length;






 buffer->messages++;
 buffer->char_sum += buffer->current_length;

 buffer->current_line = ((void*)0);
 buffer->current_length = 0;
 buffer->current_msg = ((void*)0);
}
