
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* callback_data; int callback; int status; int command; } ;
struct sclp_vt220_request {TYPE_1__ sclp_req; } ;


 int SCLP_CMDW_WRITE_EVENT_DATA ;
 int SCLP_REQ_FILLED ;
 int sclp_add_request (TYPE_1__*) ;
 int sclp_vt220_callback ;

__attribute__((used)) static int
__sclp_vt220_emit(struct sclp_vt220_request *request)
{
 request->sclp_req.command = SCLP_CMDW_WRITE_EVENT_DATA;
 request->sclp_req.status = SCLP_REQ_FILLED;
 request->sclp_req.callback = sclp_vt220_callback;
 request->sclp_req.callback_data = (void *) request;

 return sclp_add_request(&request->sclp_req);
}
