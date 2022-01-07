
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dt; int iu; int qas; int check_nego; } ;
struct sym_tcb {TYPE_1__ tgoal; } ;
struct sym_hcb {struct sym_tcb* target; } ;
struct TYPE_4__ {int parent; } ;
struct scsi_target {size_t id; TYPE_2__ dev; } ;
struct Scsi_Host {int dummy; } ;


 struct Scsi_Host* dev_to_shost (int ) ;
 struct sym_hcb* sym_get_hcb (struct Scsi_Host*) ;

__attribute__((used)) static void sym2_set_dt(struct scsi_target *starget, int dt)
{
 struct Scsi_Host *shost = dev_to_shost(starget->dev.parent);
 struct sym_hcb *np = sym_get_hcb(shost);
 struct sym_tcb *tp = &np->target[starget->id];


 if (dt)
  tp->tgoal.dt = 1;
 else
  tp->tgoal.iu = tp->tgoal.dt = tp->tgoal.qas = 0;
 tp->tgoal.check_nego = 1;
}
