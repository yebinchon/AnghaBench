
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sclp_req {int dummy; } ;
struct TYPE_4__ {int length; } ;
struct init_sccb {int mask_length; TYPE_1__ header; } ;
typedef int sccb_mask_t ;
struct TYPE_5__ {struct init_sccb* sccb; int * callback_data; int * callback; scalar_t__ start_count; int status; int command; } ;


 int SCLP_CMDW_WRITE_EVENT_MASK ;
 int SCLP_MASK_SIZE_COMPAT ;
 int SCLP_REQ_FILLED ;
 int clear_page (struct init_sccb*) ;
 int memset (TYPE_2__*,int ,int) ;
 int sccb_set_recv_mask (struct init_sccb*,int ) ;
 int sccb_set_sclp_recv_mask (struct init_sccb*,int ) ;
 int sccb_set_sclp_send_mask (struct init_sccb*,int ) ;
 int sccb_set_send_mask (struct init_sccb*,int ) ;
 TYPE_2__ sclp_init_req ;
 struct init_sccb* sclp_init_sccb ;
 scalar_t__ sclp_mask_compat_mode ;

__attribute__((used)) static inline void
__sclp_make_init_req(sccb_mask_t receive_mask, sccb_mask_t send_mask)
{
 struct init_sccb *sccb = sclp_init_sccb;

 clear_page(sccb);
 memset(&sclp_init_req, 0, sizeof(struct sclp_req));
 sclp_init_req.command = SCLP_CMDW_WRITE_EVENT_MASK;
 sclp_init_req.status = SCLP_REQ_FILLED;
 sclp_init_req.start_count = 0;
 sclp_init_req.callback = ((void*)0);
 sclp_init_req.callback_data = ((void*)0);
 sclp_init_req.sccb = sccb;
 sccb->header.length = sizeof(*sccb);
 if (sclp_mask_compat_mode)
  sccb->mask_length = SCLP_MASK_SIZE_COMPAT;
 else
  sccb->mask_length = sizeof(sccb_mask_t);
 sccb_set_recv_mask(sccb, receive_mask);
 sccb_set_send_mask(sccb, send_mask);
 sccb_set_sclp_recv_mask(sccb, 0);
 sccb_set_sclp_send_mask(sccb, 0);
}
