
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtu3 {int delayed_status; int test_mode; scalar_t__ u2_enable; scalar_t__ u1_enable; scalar_t__ may_wakeup; int ep0_state; scalar_t__ address; } ;


 int MU3D_EP0_STATE_SETUP ;

__attribute__((used)) static void mtu3_state_reset(struct mtu3 *mtu)
{
 mtu->address = 0;
 mtu->ep0_state = MU3D_EP0_STATE_SETUP;
 mtu->may_wakeup = 0;
 mtu->u1_enable = 0;
 mtu->u2_enable = 0;
 mtu->delayed_status = 0;
 mtu->test_mode = 0;
}
