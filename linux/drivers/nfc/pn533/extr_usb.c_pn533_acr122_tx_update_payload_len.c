
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pn533_acr122_tx_frame {int datalen; } ;



__attribute__((used)) static void pn533_acr122_tx_update_payload_len(void *_frame, int len)
{
 struct pn533_acr122_tx_frame *frame = _frame;

 frame->datalen += len;
}
