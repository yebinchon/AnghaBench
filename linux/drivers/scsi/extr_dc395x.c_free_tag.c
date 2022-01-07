
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ScsiReqBlk {int tag_number; } ;
struct DeviceCtlBlk {int tag_mask; } ;



__attribute__((used)) static void free_tag(struct DeviceCtlBlk *dcb, struct ScsiReqBlk *srb)
{
 if (srb->tag_number < 255) {
  dcb->tag_mask &= ~(1 << srb->tag_number);
  srb->tag_number = 255;
 }
}
