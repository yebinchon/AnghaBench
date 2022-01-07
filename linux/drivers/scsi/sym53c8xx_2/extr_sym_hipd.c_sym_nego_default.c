
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int check_nego; int qas; int dt; int iu; int offset; int period; } ;
struct sym_tcb {TYPE_1__ tgoal; } ;
struct sym_hcb {void** msgout; void** msgin; int maxoffs; int minsync; } ;
struct sym_ccb {int nego_status; int target; } ;


 void* M_NOOP ;



 int sym_setpprot (struct sym_hcb*,int ,int ,int ,int ,int ,int ,int ) ;
 int sym_setsync (struct sym_hcb*,int ,int ,int ,int ,int ) ;
 int sym_setwide (struct sym_hcb*,int ,int ) ;

__attribute__((used)) static void sym_nego_default(struct sym_hcb *np, struct sym_tcb *tp, struct sym_ccb *cp)
{
 switch (cp->nego_status) {
 case 130:



  if (tp->tgoal.period < np->minsync)
   tp->tgoal.period = np->minsync;
  if (tp->tgoal.offset > np->maxoffs)
   tp->tgoal.offset = np->maxoffs;
  tp->tgoal.iu = tp->tgoal.dt = tp->tgoal.qas = 0;
  tp->tgoal.check_nego = 1;

  break;
 case 129:
  sym_setsync (np, cp->target, 0, 0, 0, 0);
  break;
 case 128:
  sym_setwide (np, cp->target, 0);
  break;
 }
 np->msgin [0] = M_NOOP;
 np->msgout[0] = M_NOOP;
 cp->nego_status = 0;
}
