
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct srb_iocb {int timer; } ;
struct TYPE_5__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ srb_t ;


 int del_timer (int *) ;
 int qla2x00_rel_sp (TYPE_2__*) ;

void qla2x00_sp_free(srb_t *sp)
{
 struct srb_iocb *iocb = &sp->u.iocb_cmd;

 del_timer(&iocb->timer);
 qla2x00_rel_sp(sp);
}
