#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vhost_net {scalar_t__ refcnt_bias; } ;
struct page_frag {int offset; int size; scalar_t__ page; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int SKB_FRAG_PAGE_ORDER ; 
 scalar_t__ USHRT_MAX ; 
 int __GFP_COMP ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool FUNC5(struct vhost_net *net, unsigned int sz,
				       struct page_frag *pfrag, gfp_t gfp)
{
	if (pfrag->page) {
		if (pfrag->offset + sz <= pfrag->size)
			return true;
		FUNC0(pfrag->page, net->refcnt_bias);
	}

	pfrag->offset = 0;
	net->refcnt_bias = 0;
	if (SKB_FRAG_PAGE_ORDER) {
		/* Avoid direct reclaim but allow kswapd to wake */
		pfrag->page = FUNC2((gfp & ~__GFP_DIRECT_RECLAIM) |
					  __GFP_COMP | __GFP_NOWARN |
					  __GFP_NORETRY,
					  SKB_FRAG_PAGE_ORDER);
		if (FUNC3(pfrag->page)) {
			pfrag->size = PAGE_SIZE << SKB_FRAG_PAGE_ORDER;
			goto done;
		}
	}
	pfrag->page = FUNC1(gfp);
	if (FUNC3(pfrag->page)) {
		pfrag->size = PAGE_SIZE;
		goto done;
	}
	return false;

done:
	net->refcnt_bias = USHRT_MAX;
	FUNC4(pfrag->page, USHRT_MAX - 1);
	return true;
}