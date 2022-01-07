
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_lport {int ref; } ;


 int kref_put (int *,int ) ;
 int nvme_fc_free_lport ;

__attribute__((used)) static void
nvme_fc_lport_put(struct nvme_fc_lport *lport)
{
 kref_put(&lport->ref, nvme_fc_free_lport);
}
