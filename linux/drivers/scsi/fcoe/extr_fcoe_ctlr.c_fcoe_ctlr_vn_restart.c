
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fcoe_ctlr {int port_id; scalar_t__ probe_tries; int timer; TYPE_1__* lp; int rnd_state; } ;
struct TYPE_2__ {int wwpn; } ;


 int FIP_ST_VNMP_START ;
 unsigned long FIP_VN_PROBE_WAIT ;
 scalar_t__ FIP_VN_RLIM_COUNT ;
 unsigned long FIP_VN_RLIM_INT ;
 int fcoe_ctlr_disc_stop_locked (TYPE_1__*) ;
 int fcoe_ctlr_set_state (struct fcoe_ctlr*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;
 unsigned long prandom_u32 () ;
 int prandom_u32_state (int *) ;

__attribute__((used)) static void fcoe_ctlr_vn_restart(struct fcoe_ctlr *fip)
{
 unsigned long wait;
 u32 port_id;

 fcoe_ctlr_disc_stop_locked(fip->lp);
 port_id = fip->port_id;
 if (fip->probe_tries)
  port_id = prandom_u32_state(&fip->rnd_state) & 0xffff;
 else if (!port_id)
  port_id = fip->lp->wwpn & 0xffff;
 if (!port_id || port_id == 0xffff)
  port_id = 1;
 fip->port_id = port_id;

 if (fip->probe_tries < FIP_VN_RLIM_COUNT) {
  fip->probe_tries++;
  wait = prandom_u32() % FIP_VN_PROBE_WAIT;
 } else
  wait = FIP_VN_RLIM_INT;
 mod_timer(&fip->timer, jiffies + msecs_to_jiffies(wait));
 fcoe_ctlr_set_state(fip, FIP_ST_VNMP_START);
}
