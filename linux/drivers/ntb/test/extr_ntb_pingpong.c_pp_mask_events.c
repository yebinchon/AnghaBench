
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pp_ctx {int ntb; } ;


 int ntb_db_set_mask (int ,int) ;
 int ntb_db_valid_mask (int ) ;
 int ntb_msg_count (int ) ;
 int ntb_msg_inbits (int ) ;
 int ntb_msg_outbits (int ) ;
 int ntb_msg_set_mask (int ,int) ;

__attribute__((used)) static int pp_mask_events(struct pp_ctx *pp)
{
 u64 db_mask, msg_mask;
 int ret;

 db_mask = ntb_db_valid_mask(pp->ntb);
 ret = ntb_db_set_mask(pp->ntb, db_mask);
 if (ret)
  return ret;


 if (ntb_msg_count(pp->ntb) < 1)
  return 0;

 msg_mask = ntb_msg_outbits(pp->ntb) | ntb_msg_inbits(pp->ntb);
 return ntb_msg_set_mask(pp->ntb, msg_mask);
}
