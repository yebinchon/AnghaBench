
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int datalen; } ;
struct pn533_acr122_rx_frame {TYPE_1__ ccid; } ;



__attribute__((used)) static int pn533_acr122_rx_frame_size(void *frame)
{
 struct pn533_acr122_rx_frame *f = frame;


 return sizeof(struct pn533_acr122_rx_frame) + f->ccid.datalen;
}
