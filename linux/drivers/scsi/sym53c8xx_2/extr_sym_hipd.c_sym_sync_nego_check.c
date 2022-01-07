
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct sym_hcb {scalar_t__* msgin; scalar_t__ maxoffs; scalar_t__ minsync; scalar_t__* msgout; } ;
struct sym_ccb {int target; int cmd; } ;


 int DEBUG_FLAGS ;
 int DEBUG_NEGO ;
 scalar_t__ M_NOOP ;
 int spi_populate_sync_msg (scalar_t__*,scalar_t__,scalar_t__) ;
 scalar_t__ sym_getsync (struct sym_hcb*,int ,scalar_t__,scalar_t__*,scalar_t__*) ;
 int sym_print_addr (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int sym_print_nego_msg (struct sym_hcb*,int,char*,scalar_t__*) ;
 int sym_setsync (struct sym_hcb*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
sym_sync_nego_check(struct sym_hcb *np, int req, struct sym_ccb *cp)
{
 int target = cp->target;
 u_char chg, ofs, per, fak, div;

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_nego_msg(np, target, "sync msgin", np->msgin);
 }




 chg = 0;
 per = np->msgin[3];
 ofs = np->msgin[4];




 if (ofs) {
  if (ofs > np->maxoffs)
   {chg = 1; ofs = np->maxoffs;}
 }

 if (ofs) {
  if (per < np->minsync)
   {chg = 1; per = np->minsync;}
 }




 div = fak = 0;
 if (ofs && sym_getsync(np, 0, per, &div, &fak) < 0)
  goto reject_it;

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_addr(cp->cmd,
    "sdtr: ofs=%d per=%d div=%d fak=%d chg=%d.\n",
    ofs, per, div, fak, chg);
 }





 if (!req && chg)
  goto reject_it;




 sym_setsync (np, target, ofs, per, div, fak);




 if (!req)
  return 0;




 spi_populate_sync_msg(np->msgout, per, ofs);

 if (DEBUG_FLAGS & DEBUG_NEGO) {
  sym_print_nego_msg(np, target, "sync msgout", np->msgout);
 }

 np->msgin [0] = M_NOOP;

 return 0;

reject_it:
 sym_setsync (np, target, 0, 0, 0, 0);
 return -1;
}
