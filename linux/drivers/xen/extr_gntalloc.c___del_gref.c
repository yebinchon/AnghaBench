
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {int flags; size_t pgoff; int event; } ;
struct gntalloc_gref {scalar_t__ page; int next_gref; scalar_t__ gref_id; TYPE_1__ notify; } ;


 int UNMAP_NOTIFY_CLEAR_BYTE ;
 int UNMAP_NOTIFY_SEND_EVENT ;
 int __free_page (scalar_t__) ;
 int evtchn_put (int ) ;
 int gnttab_end_foreign_access_ref (scalar_t__,int ) ;
 int gnttab_free_grant_reference (scalar_t__) ;
 scalar_t__ gnttab_query_foreign_access (scalar_t__) ;
 int gref_size ;
 int kfree (struct gntalloc_gref*) ;
 scalar_t__* kmap (scalar_t__) ;
 int kunmap (scalar_t__) ;
 int list_del (int *) ;
 int notify_remote_via_evtchn (int ) ;

__attribute__((used)) static void __del_gref(struct gntalloc_gref *gref)
{
 if (gref->notify.flags & UNMAP_NOTIFY_CLEAR_BYTE) {
  uint8_t *tmp = kmap(gref->page);
  tmp[gref->notify.pgoff] = 0;
  kunmap(gref->page);
 }
 if (gref->notify.flags & UNMAP_NOTIFY_SEND_EVENT) {
  notify_remote_via_evtchn(gref->notify.event);
  evtchn_put(gref->notify.event);
 }

 gref->notify.flags = 0;

 if (gref->gref_id) {
  if (gnttab_query_foreign_access(gref->gref_id))
   return;

  if (!gnttab_end_foreign_access_ref(gref->gref_id, 0))
   return;

  gnttab_free_grant_reference(gref->gref_id);
 }

 gref_size--;
 list_del(&gref->next_gref);

 if (gref->page)
  __free_page(gref->page);

 kfree(gref);
}
