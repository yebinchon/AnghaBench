
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgtport {int ref; } ;


 int kref_get_unless_zero (int *) ;

__attribute__((used)) static int
nvmet_fc_tgtport_get(struct nvmet_fc_tgtport *tgtport)
{
 return kref_get_unless_zero(&tgtport->ref);
}
