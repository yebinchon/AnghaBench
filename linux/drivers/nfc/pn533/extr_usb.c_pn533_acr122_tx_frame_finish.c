
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int datalen; } ;
struct pn533_acr122_tx_frame {scalar_t__ datalen; TYPE_1__ ccid; } ;



__attribute__((used)) static void pn533_acr122_tx_frame_finish(void *_frame)
{
 struct pn533_acr122_tx_frame *frame = _frame;

 frame->ccid.datalen += frame->datalen;
}
