
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct riva_regs {int * seq; int * gra; int * attr; int * crtc; int misc_output; int ext; } ;
struct TYPE_3__ {int (* UnloadStateExt ) (TYPE_1__*,int *) ;int (* LockUnlock ) (TYPE_1__*,int ) ;} ;
struct riva_par {TYPE_1__ riva; } ;


 int ATTRin (struct riva_par*,int) ;
 int CRTCin (struct riva_par*,int) ;
 int GRAin (struct riva_par*,int) ;
 int MISCin (struct riva_par*) ;
 int NUM_ATC_REGS ;
 int NUM_CRT_REGS ;
 int NUM_GRC_REGS ;
 int NUM_SEQ_REGS ;
 int NVTRACE_ENTER () ;
 int NVTRACE_LEAVE () ;
 int SEQin (struct riva_par*,int) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (TYPE_1__*,int *) ;

__attribute__((used)) static void riva_save_state(struct riva_par *par, struct riva_regs *regs)
{
 int i;

 NVTRACE_ENTER();
 par->riva.LockUnlock(&par->riva, 0);

 par->riva.UnloadStateExt(&par->riva, &regs->ext);

 regs->misc_output = MISCin(par);

 for (i = 0; i < NUM_CRT_REGS; i++)
  regs->crtc[i] = CRTCin(par, i);

 for (i = 0; i < NUM_ATC_REGS; i++)
  regs->attr[i] = ATTRin(par, i);

 for (i = 0; i < NUM_GRC_REGS; i++)
  regs->gra[i] = GRAin(par, i);

 for (i = 0; i < NUM_SEQ_REGS; i++)
  regs->seq[i] = SEQin(par, i);
 NVTRACE_LEAVE();
}
