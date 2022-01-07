
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int class; scalar_t__ p2; scalar_t__ p1; scalar_t__ ins; } ;
struct TYPE_3__ {int datalen; scalar_t__* params; scalar_t__ seq; scalar_t__ slot; int type; } ;
struct pn533_acr122_tx_frame {int datalen; TYPE_2__ apdu; int * data; TYPE_1__ ccid; } ;


 int PN533_ACR122_PC_TO_RDR_ESCAPE ;
 int PN533_STD_FRAME_DIR_OUT ;

__attribute__((used)) static void pn533_acr122_tx_frame_init(void *_frame, u8 cmd_code)
{
 struct pn533_acr122_tx_frame *frame = _frame;

 frame->ccid.type = PN533_ACR122_PC_TO_RDR_ESCAPE;

 frame->ccid.datalen = sizeof(frame->apdu) + 1;
 frame->ccid.slot = 0;
 frame->ccid.seq = 0;
 frame->ccid.params[0] = 0;
 frame->ccid.params[1] = 0;
 frame->ccid.params[2] = 0;

 frame->data[0] = PN533_STD_FRAME_DIR_OUT;
 frame->data[1] = cmd_code;
 frame->datalen = 2;

 frame->apdu.class = 0xFF;
 frame->apdu.ins = 0;
 frame->apdu.p1 = 0;
 frame->apdu.p2 = 0;
}
