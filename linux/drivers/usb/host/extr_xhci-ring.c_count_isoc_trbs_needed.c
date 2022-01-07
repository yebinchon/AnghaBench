
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct urb {TYPE_1__* iso_frame_desc; scalar_t__ transfer_dma; } ;
struct TYPE_2__ {scalar_t__ length; scalar_t__ offset; } ;


 unsigned int count_trbs (scalar_t__,scalar_t__) ;

__attribute__((used)) static unsigned int count_isoc_trbs_needed(struct urb *urb, int i)
{
 u64 addr, len;

 addr = (u64) (urb->transfer_dma + urb->iso_frame_desc[i].offset);
 len = urb->iso_frame_desc[i].length;

 return count_trbs(addr, len);
}
