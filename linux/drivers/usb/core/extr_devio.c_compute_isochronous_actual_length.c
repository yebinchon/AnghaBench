
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {unsigned int number_of_packets; TYPE_1__* iso_frame_desc; scalar_t__ actual_length; } ;
struct TYPE_2__ {scalar_t__ actual_length; } ;



__attribute__((used)) static void compute_isochronous_actual_length(struct urb *urb)
{
 unsigned int i;

 if (urb->number_of_packets > 0) {
  urb->actual_length = 0;
  for (i = 0; i < urb->number_of_packets; i++)
   urb->actual_length +=
     urb->iso_frame_desc[i].actual_length;
 }
}
