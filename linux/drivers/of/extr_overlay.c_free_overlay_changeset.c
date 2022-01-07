
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ next; } ;
struct TYPE_4__ {TYPE_1__ entries; } ;
struct overlay_changeset {int count; struct overlay_changeset* fdt; struct overlay_changeset* overlay_tree; struct overlay_changeset* fragments; int overlay; int target; scalar_t__ id; TYPE_2__ cset; } ;


 int idr_remove (int *,scalar_t__) ;
 int kfree (struct overlay_changeset*) ;
 int of_changeset_destroy (TYPE_2__*) ;
 int of_node_put (int ) ;
 int ovcs_idr ;

__attribute__((used)) static void free_overlay_changeset(struct overlay_changeset *ovcs)
{
 int i;

 if (ovcs->cset.entries.next)
  of_changeset_destroy(&ovcs->cset);

 if (ovcs->id)
  idr_remove(&ovcs_idr, ovcs->id);

 for (i = 0; i < ovcs->count; i++) {
  of_node_put(ovcs->fragments[i].target);
  of_node_put(ovcs->fragments[i].overlay);
 }
 kfree(ovcs->fragments);





 kfree(ovcs->overlay_tree);
 kfree(ovcs->fdt);
 kfree(ovcs);
}
