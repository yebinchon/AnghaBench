
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct xenvif_queue {TYPE_3__* vif; } ;
struct skb_shared_info {int nr_frags; struct sk_buff* frag_list; int * frags; } ;
struct sk_buff {int dummy; } ;
struct gnttab_map_grant_ref {int status; int ref; int handle; } ;
struct TYPE_5__ {int ref; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct gnttab_copy {int status; TYPE_2__ source; } ;
struct TYPE_8__ {scalar_t__ pending_idx; } ;
struct TYPE_7__ {int dev; } ;


 TYPE_4__* XENVIF_TX_CB (struct sk_buff*) ;
 int XEN_NETIF_RSP_ERROR ;
 int XEN_NETIF_RSP_OKAY ;
 scalar_t__ frag_get_pending_idx (int *) ;
 scalar_t__ likely (int) ;
 scalar_t__ net_ratelimit () ;
 int netdev_dbg (int ,char*,int,int,scalar_t__,...) ;
 scalar_t__ skb_has_frag_list (struct sk_buff*) ;
 struct skb_shared_info* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int xenvif_grant_handle_set (struct xenvif_queue*,scalar_t__,int ) ;
 int xenvif_idx_release (struct xenvif_queue*,scalar_t__,int ) ;
 int xenvif_idx_unmap (struct xenvif_queue*,scalar_t__) ;

__attribute__((used)) static int xenvif_tx_check_gop(struct xenvif_queue *queue,
          struct sk_buff *skb,
          struct gnttab_map_grant_ref **gopp_map,
          struct gnttab_copy **gopp_copy)
{
 struct gnttab_map_grant_ref *gop_map = *gopp_map;
 u16 pending_idx = XENVIF_TX_CB(skb)->pending_idx;



 struct skb_shared_info *shinfo = skb_shinfo(skb);



 struct skb_shared_info *first_shinfo = ((void*)0);
 int nr_frags = shinfo->nr_frags;
 const bool sharedslot = nr_frags &&
    frag_get_pending_idx(&shinfo->frags[0]) == pending_idx;
 int i, err;


 err = (*gopp_copy)->status;
 if (unlikely(err)) {
  if (net_ratelimit())
   netdev_dbg(queue->vif->dev,
       "Grant copy of header failed! status: %d pending_idx: %u ref: %u\n",
       (*gopp_copy)->status,
       pending_idx,
       (*gopp_copy)->source.u.ref);

  if (!sharedslot)
   xenvif_idx_release(queue, pending_idx,
        XEN_NETIF_RSP_ERROR);
 }
 (*gopp_copy)++;

check_frags:
 for (i = 0; i < nr_frags; i++, gop_map++) {
  int j, newerr;

  pending_idx = frag_get_pending_idx(&shinfo->frags[i]);


  newerr = gop_map->status;

  if (likely(!newerr)) {
   xenvif_grant_handle_set(queue,
      pending_idx,
      gop_map->handle);

   if (unlikely(err)) {
    xenvif_idx_unmap(queue, pending_idx);




    if (i == 0 && sharedslot)
     xenvif_idx_release(queue, pending_idx,
          XEN_NETIF_RSP_ERROR);
    else
     xenvif_idx_release(queue, pending_idx,
          XEN_NETIF_RSP_OKAY);
   }
   continue;
  }


  if (net_ratelimit())
   netdev_dbg(queue->vif->dev,
       "Grant map of %d. frag failed! status: %d pending_idx: %u ref: %u\n",
       i,
       gop_map->status,
       pending_idx,
       gop_map->ref);

  xenvif_idx_release(queue, pending_idx, XEN_NETIF_RSP_ERROR);


  if (err)
   continue;




  if (!sharedslot)
   xenvif_idx_release(queue,
        XENVIF_TX_CB(skb)->pending_idx,
        XEN_NETIF_RSP_OKAY);


  for (j = 0; j < i; j++) {
   pending_idx = frag_get_pending_idx(&shinfo->frags[j]);
   xenvif_idx_unmap(queue, pending_idx);
   xenvif_idx_release(queue, pending_idx,
        XEN_NETIF_RSP_OKAY);
  }




  if (first_shinfo) {
   for (j = 0; j < first_shinfo->nr_frags; j++) {
    pending_idx = frag_get_pending_idx(&first_shinfo->frags[j]);
    xenvif_idx_unmap(queue, pending_idx);
    xenvif_idx_release(queue, pending_idx,
         XEN_NETIF_RSP_OKAY);
   }
  }


  err = newerr;
 }

 if (skb_has_frag_list(skb) && !first_shinfo) {
  first_shinfo = skb_shinfo(skb);
  shinfo = skb_shinfo(skb_shinfo(skb)->frag_list);
  nr_frags = shinfo->nr_frags;

  goto check_frags;
 }

 *gopp_map = gop_map;
 return err;
}
