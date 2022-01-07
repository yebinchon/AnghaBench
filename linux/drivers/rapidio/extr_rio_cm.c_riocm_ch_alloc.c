
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ inuse_cnt; scalar_t__ count; scalar_t__ tail; scalar_t__ head; } ;
struct rio_channel {int id; TYPE_1__ rx_ring; int ref; int comp_close; int comp; int ch_node; int accept_queue; int lock; int state; } ;


 int EBUSY ;
 int ENOMEM ;
 int ENOSPC ;
 struct rio_channel* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int RIOCM_MAX_CHNUM ;
 int RIO_CM_IDLE ;
 int ch_idr ;
 int chstart ;
 int idr_alloc_cyclic (int *,struct rio_channel*,int,int,int ) ;
 int idr_lock ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int init_completion (int *) ;
 int kfree (struct rio_channel*) ;
 int kref_init (int *) ;
 struct rio_channel* kzalloc (int,int ) ;
 int spin_lock_bh (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static struct rio_channel *riocm_ch_alloc(u16 ch_num)
{
 int id;
 int start, end;
 struct rio_channel *ch;

 ch = kzalloc(sizeof(*ch), GFP_KERNEL);
 if (!ch)
  return ERR_PTR(-ENOMEM);

 if (ch_num) {

  start = ch_num;
  end = ch_num + 1;
 } else {

  start = chstart;
  end = RIOCM_MAX_CHNUM + 1;
 }

 idr_preload(GFP_KERNEL);
 spin_lock_bh(&idr_lock);
 id = idr_alloc_cyclic(&ch_idr, ch, start, end, GFP_NOWAIT);
 spin_unlock_bh(&idr_lock);
 idr_preload_end();

 if (id < 0) {
  kfree(ch);
  return ERR_PTR(id == -ENOSPC ? -EBUSY : id);
 }

 ch->id = (u16)id;
 ch->state = RIO_CM_IDLE;
 spin_lock_init(&ch->lock);
 INIT_LIST_HEAD(&ch->accept_queue);
 INIT_LIST_HEAD(&ch->ch_node);
 init_completion(&ch->comp);
 init_completion(&ch->comp_close);
 kref_init(&ch->ref);
 ch->rx_ring.head = 0;
 ch->rx_ring.tail = 0;
 ch->rx_ring.count = 0;
 ch->rx_ring.inuse_cnt = 0;

 return ch;
}
