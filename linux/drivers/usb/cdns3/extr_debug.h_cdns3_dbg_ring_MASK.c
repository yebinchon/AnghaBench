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
struct cdns3_trb {int /*<<< orphan*/  control; int /*<<< orphan*/  length; int /*<<< orphan*/  buffer; } ;
struct cdns3_endpoint {int trb_pool_dma; size_t dequeue; char* name; size_t enqueue; int free_trbs; int ccs; int pcs; struct cdns3_trb* trb_pool; int /*<<< orphan*/  type; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TRBS_PER_SEGMENT ; 
 scalar_t__ FUNC1 (struct cdns3_endpoint*,struct cdns3_trb*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,...) ; 

__attribute__((used)) static inline char *FUNC4(struct cdns3_endpoint *priv_ep,
				   struct cdns3_trb *ring, char *str)
{
	dma_addr_t addr = priv_ep->trb_pool_dma;
	struct cdns3_trb *trb;
	int trb_per_sector;
	int ret = 0;
	int i;

	trb_per_sector = FUNC0(priv_ep->type);

	trb = &priv_ep->trb_pool[priv_ep->dequeue];
	ret += FUNC3(str + ret, "\n\t\tRing contents for %s:", priv_ep->name);

	ret += FUNC3(str + ret,
		       "\n\t\tRing deq index: %d, trb: %p (virt), 0x%llx (dma)\n",
		       priv_ep->dequeue, trb,
		       (unsigned long long)FUNC1(priv_ep, trb));

	trb = &priv_ep->trb_pool[priv_ep->enqueue];
	ret += FUNC3(str + ret,
		       "\t\tRing enq index: %d, trb: %p (virt), 0x%llx (dma)\n",
		       priv_ep->enqueue, trb,
		       (unsigned long long)FUNC1(priv_ep, trb));

	ret += FUNC3(str + ret,
		       "\t\tfree trbs: %d, CCS=%d, PCS=%d\n",
		       priv_ep->free_trbs, priv_ep->ccs, priv_ep->pcs);

	if (trb_per_sector > TRBS_PER_SEGMENT)
		trb_per_sector = TRBS_PER_SEGMENT;

	if (trb_per_sector > TRBS_PER_SEGMENT) {
		FUNC3(str + ret, "\t\tTo big transfer ring %d\n",
			trb_per_sector);
		return str;
	}

	for (i = 0; i < trb_per_sector; ++i) {
		trb = &ring[i];
		ret += FUNC3(str + ret,
			"\t\t@%pad %08x %08x %08x\n", &addr,
			FUNC2(trb->buffer),
			FUNC2(trb->length),
			FUNC2(trb->control));
		addr += sizeof(*trb);
	}

	return str;
}