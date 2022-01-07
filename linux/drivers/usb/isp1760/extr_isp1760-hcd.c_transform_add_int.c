
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ptd {int dw5; int dw2; int dw4; } ;
struct isp1760_qtd {TYPE_2__* urb; } ;
struct isp1760_qh {int dummy; } ;
struct TYPE_4__ {int interval; TYPE_1__* dev; } ;
struct TYPE_3__ {scalar_t__ speed; } ;


 scalar_t__ USB_SPEED_HIGH ;

__attribute__((used)) static void transform_add_int(struct isp1760_qh *qh,
   struct isp1760_qtd *qtd, struct ptd *ptd)
{
 u32 usof;
 u32 period;
 if (qtd->urb->dev->speed == USB_SPEED_HIGH) {

  period = qtd->urb->interval >> 3;

  if (qtd->urb->interval > 4)
   usof = 0x01;

  else if (qtd->urb->interval > 2)
   usof = 0x22;
  else if (qtd->urb->interval > 1)
   usof = 0x55;
  else
   usof = 0xff;
 } else {

  period = qtd->urb->interval;
  usof = 0x0f;
  ptd->dw5 = 0xff;
 }

 period = period >> 1;
 period &= 0xf8;

 ptd->dw2 |= period;
 ptd->dw4 = usof;
}
