
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int fxiocb_comp; } ;
struct TYPE_11__ {TYPE_2__ fxiocb; } ;
struct TYPE_15__ {scalar_t__ expires; } ;
struct TYPE_13__ {TYPE_3__ u; TYPE_7__ timer; } ;
struct TYPE_12__ {TYPE_5__ iocb_cmd; } ;
struct TYPE_14__ {scalar_t__ type; int start_timer; TYPE_4__ u; TYPE_1__* vha; int free; } ;
typedef TYPE_6__ srb_t ;
struct TYPE_9__ {int hw; } ;


 unsigned long HZ ;
 scalar_t__ IS_QLAFX00 (int ) ;
 scalar_t__ SRB_FXIOCB_DCMD ;
 int init_completion (int *) ;
 scalar_t__ jiffies ;
 int qla2x00_sp_free ;
 int qla2x00_sp_timeout ;
 int timer_setup (TYPE_7__*,int ,int ) ;

void qla2x00_init_timer(srb_t *sp, unsigned long tmo)
{
 timer_setup(&sp->u.iocb_cmd.timer, qla2x00_sp_timeout, 0);
 sp->u.iocb_cmd.timer.expires = jiffies + tmo * HZ;
 sp->free = qla2x00_sp_free;
 if (IS_QLAFX00(sp->vha->hw) && sp->type == SRB_FXIOCB_DCMD)
  init_completion(&sp->u.iocb_cmd.u.fxiocb.fxiocb_comp);
 sp->start_timer = 1;
}
