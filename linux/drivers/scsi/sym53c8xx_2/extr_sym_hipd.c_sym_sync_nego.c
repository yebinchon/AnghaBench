
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_tcb {int dummy; } ;
struct sym_hcb {int dummy; } ;
struct sym_ccb {scalar_t__ nego_status; } ;


 int HS_BUSY ;
 scalar_t__ HS_NEGOTIATE ;
 int HS_PRT ;
 scalar_t__ INB (struct sym_hcb*,int ) ;
 scalar_t__ NS_SYNC ;
 int OUTB (struct sym_hcb*,int ,int ) ;
 int OUTL_DSP (struct sym_hcb*,int ) ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SCRIPTB_BA (struct sym_hcb*,int ) ;
 int clrack ;
 int msg_bad ;
 int sdtr_resp ;
 int sym_sync_nego_check (struct sym_hcb*,int,struct sym_ccb*) ;

__attribute__((used)) static void sym_sync_nego(struct sym_hcb *np, struct sym_tcb *tp, struct sym_ccb *cp)
{
 int req = 1;
 int result;




 if (INB(np, HS_PRT) == HS_NEGOTIATE) {
  OUTB(np, HS_PRT, HS_BUSY);
  if (cp->nego_status && cp->nego_status != NS_SYNC)
   goto reject_it;
  req = 0;
 }




 result = sym_sync_nego_check(np, req, cp);
 if (result)
  goto reject_it;
 if (req) {
  cp->nego_status = NS_SYNC;
  OUTL_DSP(np, SCRIPTB_BA(np, sdtr_resp));
 }
 else
  OUTL_DSP(np, SCRIPTA_BA(np, clrack));
 return;

reject_it:
 OUTL_DSP(np, SCRIPTB_BA(np, msg_bad));
}
