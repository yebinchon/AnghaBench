
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wa_xfer {int lock; int list_node; int refcnt; } ;


 int INIT_LIST_HEAD (int *) ;
 int kref_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void wa_xfer_init(struct wa_xfer *xfer)
{
 kref_init(&xfer->refcnt);
 INIT_LIST_HEAD(&xfer->list_node);
 spin_lock_init(&xfer->lock);
}
