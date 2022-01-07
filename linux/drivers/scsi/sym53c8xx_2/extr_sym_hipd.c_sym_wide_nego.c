
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; int period; } ;
struct sym_tcb {TYPE_1__ tgoal; } ;
struct sym_hcb {int msgout; } ;
struct sym_ccb {scalar_t__ nego_status; int target; } ;


 int DEBUG_FLAGS ;
 int DEBUG_NEGO ;
 scalar_t__ HS_BUSY ;
 scalar_t__ HS_NEGOTIATE ;
 int HS_PRT ;
 scalar_t__ INB (struct sym_hcb*,int ) ;
 scalar_t__ NS_SYNC ;
 scalar_t__ NS_WIDE ;
 int OUTB (struct sym_hcb*,int ,scalar_t__) ;
 int OUTL_DSP (struct sym_hcb*,int ) ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SCRIPTB_BA (struct sym_hcb*,int ) ;
 int clrack ;
 int msg_bad ;
 int sdtr_resp ;
 int spi_populate_sync_msg (int ,int ,scalar_t__) ;
 int sym_print_nego_msg (struct sym_hcb*,int ,char*,int ) ;
 int sym_wide_nego_check (struct sym_hcb*,int,struct sym_ccb*) ;
 int wdtr_resp ;

__attribute__((used)) static void sym_wide_nego(struct sym_hcb *np, struct sym_tcb *tp, struct sym_ccb *cp)
{
 int req = 1;
 int result;




 if (INB(np, HS_PRT) == HS_NEGOTIATE) {
  OUTB(np, HS_PRT, HS_BUSY);
  if (cp->nego_status && cp->nego_status != NS_WIDE)
   goto reject_it;
  req = 0;
 }




 result = sym_wide_nego_check(np, req, cp);
 if (result)
  goto reject_it;
 if (req) {
  cp->nego_status = NS_WIDE;
  OUTL_DSP(np, SCRIPTB_BA(np, wdtr_resp));
 } else {





  if (tp->tgoal.offset) {
   spi_populate_sync_msg(np->msgout, tp->tgoal.period,
     tp->tgoal.offset);

   if (DEBUG_FLAGS & DEBUG_NEGO) {
    sym_print_nego_msg(np, cp->target,
                       "sync msgout", np->msgout);
   }

   cp->nego_status = NS_SYNC;
   OUTB(np, HS_PRT, HS_NEGOTIATE);
   OUTL_DSP(np, SCRIPTB_BA(np, sdtr_resp));
   return;
  } else
   OUTL_DSP(np, SCRIPTA_BA(np, clrack));
 }

 return;

reject_it:
 OUTL_DSP(np, SCRIPTB_BA(np, msg_bad));
}
