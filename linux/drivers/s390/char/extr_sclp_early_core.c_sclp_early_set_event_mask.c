
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int response_code; } ;
struct init_sccb {int mask_length; TYPE_1__ header; } ;
typedef int sccb_mask_t ;


 int EIO ;
 int SCLP_CMDW_WRITE_EVENT_MASK ;
 int SCLP_MASK_SIZE_COMPAT ;
 int memset (struct init_sccb*,int ,int) ;
 int sccb_set_recv_mask (struct init_sccb*,int ) ;
 int sccb_set_send_mask (struct init_sccb*,int ) ;
 scalar_t__ sclp_early_cmd (int ,struct init_sccb*) ;
 int sclp_mask_compat_mode ;

int sclp_early_set_event_mask(struct init_sccb *sccb,
         sccb_mask_t receive_mask,
         sccb_mask_t send_mask)
{
retry:
 memset(sccb, 0, sizeof(*sccb));
 sccb->header.length = sizeof(*sccb);
 if (sclp_mask_compat_mode)
  sccb->mask_length = SCLP_MASK_SIZE_COMPAT;
 else
  sccb->mask_length = sizeof(sccb_mask_t);
 sccb_set_recv_mask(sccb, receive_mask);
 sccb_set_send_mask(sccb, send_mask);
 if (sclp_early_cmd(SCLP_CMDW_WRITE_EVENT_MASK, sccb))
  return -EIO;
 if ((sccb->header.response_code == 0x74f0) && !sclp_mask_compat_mode) {
  sclp_mask_compat_mode = 1;
  goto retry;
 }
 if (sccb->header.response_code != 0x20)
  return -EIO;
 return 0;
}
