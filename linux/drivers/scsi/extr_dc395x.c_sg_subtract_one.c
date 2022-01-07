
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ScsiReqBlk {scalar_t__ total_xfer_length; } ;


 int sg_update_list (struct ScsiReqBlk*,scalar_t__) ;

__attribute__((used)) static void sg_subtract_one(struct ScsiReqBlk *srb)
{
 sg_update_list(srb, srb->total_xfer_length - 1);
}
