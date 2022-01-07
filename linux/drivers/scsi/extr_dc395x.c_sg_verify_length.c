
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ScsiReqBlk {unsigned int sg_index; unsigned int sg_count; unsigned int total_xfer_length; struct SGentry* segment_x; } ;
struct SGentry {scalar_t__ length; } ;


 int DBG_SG ;
 scalar_t__ debug_enabled (int ) ;
 int dprintkdbg (int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void sg_verify_length(struct ScsiReqBlk *srb)
{
 if (debug_enabled(DBG_SG)) {
  unsigned len = 0;
  unsigned idx = srb->sg_index;
  struct SGentry *psge = srb->segment_x + idx;
  for (; idx < srb->sg_count; psge++, idx++)
   len += psge->length;
  if (len != srb->total_xfer_length)
   dprintkdbg(DBG_SG,
          "Inconsistent SRB S/G lengths (Tot=%i, Count=%i) !!\n",
          srb->total_xfer_length, len);
 }
}
