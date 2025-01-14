
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vscsibk_pend {int * cmnd; TYPE_2__* v2p; } ;
struct scsiback_tpg {TYPE_1__* tport; } ;
struct TYPE_4__ {int lun; struct scsiback_tpg* tpg; } ;
struct TYPE_3__ {int tport_name; } ;


 int driver_byte (int) ;
 int host_byte (int) ;
 int msg_byte (int) ;
 int pr_err (char*,int ,int ,int ,int ,int ,int ,int ) ;
 int status_byte (int) ;

__attribute__((used)) static void scsiback_print_status(char *sense_buffer, int errors,
     struct vscsibk_pend *pending_req)
{
 struct scsiback_tpg *tpg = pending_req->v2p->tpg;

 pr_err("[%s:%d] cmnd[0]=%02x -> st=%02x msg=%02x host=%02x drv=%02x\n",
        tpg->tport->tport_name, pending_req->v2p->lun,
        pending_req->cmnd[0], status_byte(errors), msg_byte(errors),
        host_byte(errors), driver_byte(errors));
}
