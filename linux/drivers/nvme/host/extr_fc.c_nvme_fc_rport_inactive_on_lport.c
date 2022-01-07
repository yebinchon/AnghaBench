
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvme_fc_rport {struct nvme_fc_lport* lport; } ;
struct TYPE_4__ {scalar_t__ port_state; } ;
struct nvme_fc_lport {TYPE_2__ localport; TYPE_1__* ops; int act_rport_cnt; } ;
struct TYPE_3__ {int (* localport_delete ) (TYPE_2__*) ;} ;


 scalar_t__ FC_OBJSTATE_DELETED ;
 scalar_t__ atomic_dec_return (int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
nvme_fc_rport_inactive_on_lport(struct nvme_fc_rport *rport)
{
 struct nvme_fc_lport *lport = rport->lport;
 u32 cnt;

 cnt = atomic_dec_return(&lport->act_rport_cnt);
 if (cnt == 0 && lport->localport.port_state == FC_OBJSTATE_DELETED)
  lport->ops->localport_delete(&lport->localport);
}
