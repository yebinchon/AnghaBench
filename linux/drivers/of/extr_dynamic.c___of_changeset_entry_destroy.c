
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct of_changeset_entry {scalar_t__ action; int node; TYPE_2__* np; } ;
struct TYPE_6__ {int kref; } ;
struct TYPE_7__ {TYPE_1__ kobj; } ;


 int OF_OVERLAY ;
 int OF_OVERLAY_FREE_CSET ;
 scalar_t__ OF_RECONFIG_ATTACH_NODE ;
 int kfree (struct of_changeset_entry*) ;
 int kref_read (int *) ;
 int list_del (int *) ;
 scalar_t__ of_node_check_flag (TYPE_2__*,int ) ;
 int of_node_put (TYPE_2__*) ;
 int of_node_set_flag (TYPE_2__*,int ) ;
 int pr_err (char*,int,TYPE_2__*) ;

__attribute__((used)) static void __of_changeset_entry_destroy(struct of_changeset_entry *ce)
{
 if (ce->action == OF_RECONFIG_ATTACH_NODE &&
     of_node_check_flag(ce->np, OF_OVERLAY)) {
  if (kref_read(&ce->np->kobj.kref) > 1) {
   pr_err("ERROR: memory leak, expected refcount 1 instead of %d, of_node_get()/of_node_put() unbalanced - destroy cset entry: attach overlay node %pOF\n",
          kref_read(&ce->np->kobj.kref), ce->np);
  } else {
   of_node_set_flag(ce->np, OF_OVERLAY_FREE_CSET);
  }
 }

 of_node_put(ce->np);
 list_del(&ce->node);
 kfree(ce);
}
