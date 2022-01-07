
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_sync_hdr {int CreditRequest; } ;
struct mid_q_entry {scalar_t__ mid_state; scalar_t__ resp_buf; } ;


 scalar_t__ MID_RESPONSE_MALFORMED ;
 scalar_t__ MID_RESPONSE_RECEIVED ;
 unsigned int le16_to_cpu (int ) ;

__attribute__((used)) static unsigned int
smb2_get_credits(struct mid_q_entry *mid)
{
 struct smb2_sync_hdr *shdr = (struct smb2_sync_hdr *)mid->resp_buf;

 if (mid->mid_state == MID_RESPONSE_RECEIVED
     || mid->mid_state == MID_RESPONSE_MALFORMED)
  return le16_to_cpu(shdr->CreditRequest);

 return 0;
}
