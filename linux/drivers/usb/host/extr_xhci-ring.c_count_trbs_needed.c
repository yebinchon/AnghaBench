
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer_length; int transfer_dma; } ;


 unsigned int count_trbs (int ,int ) ;

__attribute__((used)) static inline unsigned int count_trbs_needed(struct urb *urb)
{
 return count_trbs(urb->transfer_dma, urb->transfer_buffer_length);
}
