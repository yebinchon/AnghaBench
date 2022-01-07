
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct hfa384x_usbctlx {int state; TYPE_3__ outbuf; int list; } ;
struct TYPE_4__ {int completing; } ;
struct hfa384x {TYPE_2__* wlandev; int completion_bh; TYPE_1__ ctlxq; } ;
struct TYPE_5__ {int netdev; } ;




 int ctlxstr (int) ;
 int le16_to_cpu (int ) ;
 int list_move_tail (int *,int *) ;
 int netdev_err (int ,char*,int ,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void unlocked_usbctlx_complete(struct hfa384x *hw,
          struct hfa384x_usbctlx *ctlx)
{




 list_move_tail(&ctlx->list, &hw->ctlxq.completing);
 tasklet_schedule(&hw->completion_bh);

 switch (ctlx->state) {
 case 129:
 case 128:

  break;

 default:
  netdev_err(hw->wlandev->netdev, "CTLX[%d] not in a terminating state(%s)\n",
      le16_to_cpu(ctlx->outbuf.type),
      ctlxstr(ctlx->state));
  break;
 }
}
