
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sclp_req {int dummy; } ;
struct sccb_header {int* control_mask; scalar_t__ function_code; int length; } ;
struct TYPE_3__ {struct sccb_header* sccb; int callback; scalar_t__ start_count; int status; int command; } ;


 int PAGE_SIZE ;
 int SCLP_CMDW_READ_EVENT_DATA ;
 int SCLP_REQ_QUEUED ;
 int clear_page (struct sccb_header*) ;
 int memset (TYPE_1__*,int ,int) ;
 int sclp_read_cb ;
 TYPE_1__ sclp_read_req ;
 scalar_t__ sclp_read_sccb ;

__attribute__((used)) static void __sclp_make_read_req(void)
{
 struct sccb_header *sccb;

 sccb = (struct sccb_header *) sclp_read_sccb;
 clear_page(sccb);
 memset(&sclp_read_req, 0, sizeof(struct sclp_req));
 sclp_read_req.command = SCLP_CMDW_READ_EVENT_DATA;
 sclp_read_req.status = SCLP_REQ_QUEUED;
 sclp_read_req.start_count = 0;
 sclp_read_req.callback = sclp_read_cb;
 sclp_read_req.sccb = sccb;
 sccb->length = PAGE_SIZE;
 sccb->function_code = 0;
 sccb->control_mask[2] = 0x80;
}
