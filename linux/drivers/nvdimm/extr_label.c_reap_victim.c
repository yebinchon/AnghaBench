
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvdimm_drvdata {int dev; } ;
struct nd_mapping {int dummy; } ;
struct nd_label_ent {int * label; } ;


 int dev_dbg (int ,char*,int ) ;
 int nd_label_free_slot (struct nvdimm_drvdata*,int ) ;
 struct nvdimm_drvdata* to_ndd (struct nd_mapping*) ;
 int to_slot (struct nvdimm_drvdata*,int *) ;

__attribute__((used)) static void reap_victim(struct nd_mapping *nd_mapping,
  struct nd_label_ent *victim)
{
 struct nvdimm_drvdata *ndd = to_ndd(nd_mapping);
 u32 slot = to_slot(ndd, victim->label);

 dev_dbg(ndd->dev, "free: %d\n", slot);
 nd_label_free_slot(ndd, slot);
 victim->label = ((void*)0);
}
