
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int datalen; } ;
struct pn533_acr122_rx_frame {int* data; TYPE_1__ ccid; } ;
struct pn533 {int dummy; } ;



__attribute__((used)) static bool pn533_acr122_is_rx_frame_valid(void *_frame, struct pn533 *dev)
{
 struct pn533_acr122_rx_frame *frame = _frame;

 if (frame->ccid.type != 0x83)
  return 0;

 if (!frame->ccid.datalen)
  return 0;

 if (frame->data[frame->ccid.datalen - 2] == 0x63)
  return 0;

 return 1;
}
