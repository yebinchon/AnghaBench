
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct srr {scalar_t__ dqp_index; } ;
struct bdc {int dev; struct srr srr; } ;


 scalar_t__ NUM_SR_ENTRIES ;
 int dev_dbg_ratelimited (int ,char*,scalar_t__) ;

__attribute__((used)) static void srr_dqp_index_advc(struct bdc *bdc, u32 srr_num)
{
 struct srr *srr;

 srr = &bdc->srr;
 dev_dbg_ratelimited(bdc->dev, "srr->dqp_index:%d\n", srr->dqp_index);
 srr->dqp_index++;

 if (srr->dqp_index == NUM_SR_ENTRIES)
  srr->dqp_index = 0;
}
