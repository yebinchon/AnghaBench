
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hcb {int features; int targtbl_ba; int dqueue_ba; int squeue_ba; scalar_t__ scriptb0; scalar_t__ scripta0; } ;
struct sym_fw1b_scr {void** targtbl; void** done_pos; void** startpos; } ;
struct sym_fw1a_scr {void** ungetjob; void** start; void** reselected; void** idle; } ;
struct Scsi_Host {int dummy; } ;


 int FE_LED0 ;
 int SCR_NO_OP ;
 int SYM_CONF_SET_IARB_ON_ARB_LOST ;
 void* cpu_to_scr (int ) ;
 struct sym_hcb* sym_get_hcb (struct Scsi_Host*) ;

__attribute__((used)) static void
sym_fw1_patch(struct Scsi_Host *shost)
{
 struct sym_hcb *np = sym_get_hcb(shost);
 struct sym_fw1a_scr *scripta0;
 struct sym_fw1b_scr *scriptb0;

 scripta0 = (struct sym_fw1a_scr *) np->scripta0;
 scriptb0 = (struct sym_fw1b_scr *) np->scriptb0;




 if (!(np->features & FE_LED0)) {
  scripta0->idle[0] = cpu_to_scr(SCR_NO_OP);
  scripta0->reselected[0] = cpu_to_scr(SCR_NO_OP);
  scripta0->start[0] = cpu_to_scr(SCR_NO_OP);
 }
 scriptb0->startpos[0] = cpu_to_scr(np->squeue_ba);
 scriptb0->done_pos[0] = cpu_to_scr(np->dqueue_ba);
 scriptb0->targtbl[0] = cpu_to_scr(np->targtbl_ba);
}
