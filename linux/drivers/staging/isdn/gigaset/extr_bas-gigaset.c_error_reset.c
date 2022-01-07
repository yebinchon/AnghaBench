
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* bas; } ;
struct cardstate {TYPE_1__ hw; int bcs; } ;
struct TYPE_4__ {int interface; } ;


 int BAS_TIMEOUT ;
 int BS_RESETTING ;
 int HD_RESET_INTERRUPT_PIPE ;
 scalar_t__ req_submit (int ,int ,int ,int ) ;
 int update_basstate (TYPE_2__*,int ,int ) ;
 int usb_queue_reset_device (int ) ;

__attribute__((used)) static inline void error_reset(struct cardstate *cs)
{

 update_basstate(cs->hw.bas, BS_RESETTING, 0);
 if (req_submit(cs->bcs, HD_RESET_INTERRUPT_PIPE, 0, BAS_TIMEOUT))

  usb_queue_reset_device(cs->hw.bas->interface);
}
