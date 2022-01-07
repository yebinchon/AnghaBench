
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvdimm_drvdata {int dev; } ;
struct nvdimm {int flags; int busy; int dev; } ;
struct nd_region {int ndr_mappings; int dev; struct nd_mapping* mapping; } ;
struct nd_namespace_label {int flags; } ;
struct nd_mapping {int lock; int labels; struct nvdimm_drvdata* ndd; struct nvdimm* nvdimm; } ;
struct nd_label_ent {int list; struct nd_namespace_label* label; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int NDD_ALIASING ;
 int NDD_LOCKED ;
 int NDD_NOBLK ;
 int NSLABEL_FLAG_LOCAL ;
 int __cpu_to_le32 (int ) ;
 int __le32_to_cpu (int ) ;
 int atomic_inc (int *) ;
 int deactivate_labels (struct nd_region*) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int *,char*,int ,char*) ;
 int dev_name (int *) ;
 int devm_add_action_or_reset (int *,int (*) (struct nd_region*),struct nd_region*) ;
 int get_ndd (struct nvdimm_drvdata*) ;
 struct nd_label_ent* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nd_namespace_label* nd_label_active (struct nvdimm_drvdata*,int) ;
 int nd_label_active_count (struct nvdimm_drvdata*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct nvdimm_drvdata* to_ndd (struct nd_mapping*) ;

__attribute__((used)) static int init_active_labels(struct nd_region *nd_region)
{
 int i;

 for (i = 0; i < nd_region->ndr_mappings; i++) {
  struct nd_mapping *nd_mapping = &nd_region->mapping[i];
  struct nvdimm_drvdata *ndd = to_ndd(nd_mapping);
  struct nvdimm *nvdimm = nd_mapping->nvdimm;
  struct nd_label_ent *label_ent;
  int count, j;





  if (!ndd) {
   if (test_bit(NDD_LOCKED, &nvdimm->flags))
                                            ;
   else if (test_bit(NDD_ALIASING, &nvdimm->flags))
                                                 ;
   else
    return 0;

   dev_err(&nd_region->dev, "%s: is %s, failing probe\n",
     dev_name(&nd_mapping->nvdimm->dev),
     test_bit(NDD_LOCKED, &nvdimm->flags)
     ? "locked" : "disabled");
   return -ENXIO;
  }
  nd_mapping->ndd = ndd;
  atomic_inc(&nvdimm->busy);
  get_ndd(ndd);

  count = nd_label_active_count(ndd);
  dev_dbg(ndd->dev, "count: %d\n", count);
  if (!count)
   continue;
  for (j = 0; j < count; j++) {
   struct nd_namespace_label *label;

   label_ent = kzalloc(sizeof(*label_ent), GFP_KERNEL);
   if (!label_ent)
    break;
   label = nd_label_active(ndd, j);
   if (test_bit(NDD_NOBLK, &nvdimm->flags)) {
    u32 flags = __le32_to_cpu(label->flags);

    flags &= ~NSLABEL_FLAG_LOCAL;
    label->flags = __cpu_to_le32(flags);
   }
   label_ent->label = label;

   mutex_lock(&nd_mapping->lock);
   list_add_tail(&label_ent->list, &nd_mapping->labels);
   mutex_unlock(&nd_mapping->lock);
  }

  if (j < count)
   break;
 }

 if (i < nd_region->ndr_mappings) {
  deactivate_labels(nd_region);
  return -ENOMEM;
 }

 return devm_add_action_or_reset(&nd_region->dev, deactivate_labels,
   nd_region);
}
