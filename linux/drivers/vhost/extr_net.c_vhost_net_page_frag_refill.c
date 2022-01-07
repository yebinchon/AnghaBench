
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vhost_net {scalar_t__ refcnt_bias; } ;
struct page_frag {int offset; int size; scalar_t__ page; } ;
typedef int gfp_t ;


 int PAGE_SIZE ;
 int SKB_FRAG_PAGE_ORDER ;
 scalar_t__ USHRT_MAX ;
 int __GFP_COMP ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __page_frag_cache_drain (scalar_t__,scalar_t__) ;
 scalar_t__ alloc_page (int) ;
 scalar_t__ alloc_pages (int,int) ;
 scalar_t__ likely (scalar_t__) ;
 int page_ref_add (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool vhost_net_page_frag_refill(struct vhost_net *net, unsigned int sz,
           struct page_frag *pfrag, gfp_t gfp)
{
 if (pfrag->page) {
  if (pfrag->offset + sz <= pfrag->size)
   return 1;
  __page_frag_cache_drain(pfrag->page, net->refcnt_bias);
 }

 pfrag->offset = 0;
 net->refcnt_bias = 0;
 if (SKB_FRAG_PAGE_ORDER) {

  pfrag->page = alloc_pages((gfp & ~__GFP_DIRECT_RECLAIM) |
       __GFP_COMP | __GFP_NOWARN |
       __GFP_NORETRY,
       SKB_FRAG_PAGE_ORDER);
  if (likely(pfrag->page)) {
   pfrag->size = PAGE_SIZE << SKB_FRAG_PAGE_ORDER;
   goto done;
  }
 }
 pfrag->page = alloc_page(gfp);
 if (likely(pfrag->page)) {
  pfrag->size = PAGE_SIZE;
  goto done;
 }
 return 0;

done:
 net->refcnt_bias = USHRT_MAX;
 page_ref_add(pfrag->page, USHRT_MAX - 1);
 return 1;
}
