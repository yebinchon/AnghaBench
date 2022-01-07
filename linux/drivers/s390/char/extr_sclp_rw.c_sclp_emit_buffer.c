
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sccb; struct sclp_buffer* callback_data; int callback; int status; int command; } ;
struct sclp_buffer {scalar_t__ messages; void (* callback ) (struct sclp_buffer*,int) ;TYPE_1__ request; int sccb; int * current_line; } ;


 int EIO ;
 int SCLP_CMDW_WRITE_EVENT_DATA ;
 int SCLP_REQ_FILLED ;
 int sclp_add_request (TYPE_1__*) ;
 int sclp_finalize_mto (struct sclp_buffer*) ;
 int sclp_writedata_callback ;

int
sclp_emit_buffer(struct sclp_buffer *buffer,
   void (*callback)(struct sclp_buffer *, int))
{

 if (buffer->current_line != ((void*)0))
  sclp_finalize_mto(buffer);


 if (buffer->messages == 0)
  return -EIO;

 buffer->request.command = SCLP_CMDW_WRITE_EVENT_DATA;
 buffer->request.status = SCLP_REQ_FILLED;
 buffer->request.callback = sclp_writedata_callback;
 buffer->request.callback_data = buffer;
 buffer->request.sccb = buffer->sccb;
 buffer->callback = callback;
 return sclp_add_request(&buffer->request);
}
