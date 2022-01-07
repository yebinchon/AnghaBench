
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ct_entry_24xx {int handle; } ;
struct TYPE_11__ {struct ct_entry_24xx* iocb; } ;
struct TYPE_7__ {TYPE_6__ ctarg; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_9__ {TYPE_2__ iocb_cmd; } ;
struct TYPE_10__ {int handle; TYPE_3__ u; int vha; } ;
typedef TYPE_4__ srb_t ;


 int qla24xx_prep_ms_iocb (int ,TYPE_6__*) ;

__attribute__((used)) static void
qla2x00_ctpthru_cmd_iocb(srb_t *sp, struct ct_entry_24xx *ct_pkt)
{
 sp->u.iocb_cmd.u.ctarg.iocb = ct_pkt;
 qla24xx_prep_ms_iocb(sp->vha, &sp->u.iocb_cmd.u.ctarg);
 ct_pkt->handle = sp->handle;
}
