
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_rport {int ref; } ;


 int kref_put (int *,int ) ;
 int nvme_fc_free_rport ;

__attribute__((used)) static void
nvme_fc_rport_put(struct nvme_fc_rport *rport)
{
 kref_put(&rport->ref, nvme_fc_free_rport);
}
