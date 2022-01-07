
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgt_assoc {int ref; } ;


 int kref_put (int *,int ) ;
 int nvmet_fc_target_assoc_free ;

__attribute__((used)) static void
nvmet_fc_tgt_a_put(struct nvmet_fc_tgt_assoc *assoc)
{
 kref_put(&assoc->ref, nvmet_fc_target_assoc_free);
}
