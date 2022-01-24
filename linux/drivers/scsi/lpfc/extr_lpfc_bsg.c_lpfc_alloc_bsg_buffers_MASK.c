#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ bdeSize; int /*<<< orphan*/  bdeFlags; } ;
struct TYPE_4__ {void* w; TYPE_1__ f; } ;
struct ulp_bde64 {TYPE_2__ tus; void* addrHigh; void* addrLow; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  list; int /*<<< orphan*/  virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFF_TYPE_BDE_64 ; 
 int /*<<< orphan*/  BUFF_TYPE_BDE_64I ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int LPFC_BPL_SIZE ; 
 int /*<<< orphan*/  MEM_PRI ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 struct lpfc_dmabuf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct lpfc_dmabuf *
FUNC9(struct lpfc_hba *phba, unsigned int size,
		       int outbound_buffers, struct ulp_bde64 *bpl,
		       int *bpl_entries)
{
	struct lpfc_dmabuf *mlist = NULL;
	struct lpfc_dmabuf *mp;
	unsigned int bytes_left = size;

	/* Verify we can support the size specified */
	if (!size || (size > (*bpl_entries * LPFC_BPL_SIZE)))
		return NULL;

	/* Determine the number of dma buffers to allocate */
	*bpl_entries = (size % LPFC_BPL_SIZE ? size/LPFC_BPL_SIZE + 1 :
			size/LPFC_BPL_SIZE);

	/* Allocate dma buffer and place in BPL passed */
	while (bytes_left) {
		/* Allocate dma buffer  */
		mp = FUNC2(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
		if (!mp) {
			if (mlist)
				FUNC5(phba, mlist);
			return NULL;
		}

		FUNC0(&mp->list);
		mp->virt = FUNC6(phba, MEM_PRI, &(mp->phys));

		if (!mp->virt) {
			FUNC1(mp);
			if (mlist)
				FUNC5(phba, mlist);
			return NULL;
		}

		/* Queue it to a linked list */
		if (!mlist)
			mlist = mp;
		else
			FUNC4(&mp->list, &mlist->list);

		/* Add buffer to buffer pointer list */
		if (outbound_buffers)
			bpl->tus.f.bdeFlags = BUFF_TYPE_BDE_64;
		else
			bpl->tus.f.bdeFlags = BUFF_TYPE_BDE_64I;
		bpl->addrLow = FUNC3(FUNC8(mp->phys));
		bpl->addrHigh = FUNC3(FUNC7(mp->phys));
		bpl->tus.f.bdeSize = (uint16_t)
			(bytes_left >= LPFC_BPL_SIZE ? LPFC_BPL_SIZE :
			 bytes_left);
		bytes_left -= bpl->tus.f.bdeSize;
		bpl->tus.w = FUNC3(bpl->tus.w);
		bpl++;
	}
	return mlist;
}