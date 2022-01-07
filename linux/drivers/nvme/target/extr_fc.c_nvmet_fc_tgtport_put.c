
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgtport {int ref; } ;


 int kref_put (int *,int ) ;
 int nvmet_fc_free_tgtport ;

__attribute__((used)) static void
nvmet_fc_tgtport_put(struct nvmet_fc_tgtport *tgtport)
{
 kref_put(&tgtport->ref, nvmet_fc_free_tgtport);
}
