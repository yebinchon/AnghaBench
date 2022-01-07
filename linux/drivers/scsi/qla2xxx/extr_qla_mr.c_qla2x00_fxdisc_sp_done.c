
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int fxiocb_comp; } ;
struct TYPE_8__ {TYPE_2__ fxiocb; } ;
struct srb_iocb {TYPE_3__ u; } ;
struct TYPE_6__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_9__ {TYPE_1__ u; } ;
typedef TYPE_4__ srb_t ;


 int complete (int *) ;

__attribute__((used)) static void qla2x00_fxdisc_sp_done(srb_t *sp, int res)
{
 struct srb_iocb *lio = &sp->u.iocb_cmd;

 complete(&lio->u.fxiocb.fxiocb_comp);
}
