
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_rport {struct nvme_fc_lport* lport; } ;
struct nvme_fc_lport {int act_rport_cnt; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void
nvme_fc_rport_active_on_lport(struct nvme_fc_rport *rport)
{
 struct nvme_fc_lport *lport = rport->lport;

 atomic_inc(&lport->act_rport_cnt);
}
