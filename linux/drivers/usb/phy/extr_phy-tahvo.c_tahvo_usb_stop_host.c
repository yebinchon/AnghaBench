
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* otg; } ;
struct tahvo_usb {TYPE_2__ phy; } ;
struct TYPE_3__ {int state; } ;


 int OTG_STATE_A_IDLE ;

__attribute__((used)) static void tahvo_usb_stop_host(struct tahvo_usb *tu)
{
 tu->phy.otg->state = OTG_STATE_A_IDLE;
}
