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
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int SGList; void* SGTotal; } ;
struct CommandList {TYPE_2__ Header; TYPE_1__* SG; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_3__ {void* Ext; void* Len; int /*<<< orphan*/  Addr; } ;

/* Variables and functions */
 int DMA_NONE ; 
 size_t HPSA_SG_LAST ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev,
		struct CommandList *cp,
		unsigned char *buf,
		size_t buflen,
		enum dma_data_direction data_direction)
{
	u64 addr64;

	if (buflen == 0 || data_direction == DMA_NONE) {
		cp->Header.SGList = 0;
		cp->Header.SGTotal = FUNC0(0);
		return 0;
	}

	addr64 = FUNC3(&pdev->dev, buf, buflen, data_direction);
	if (FUNC4(&pdev->dev, addr64)) {
		/* Prevent subsequent unmap of something never mapped */
		cp->Header.SGList = 0;
		cp->Header.SGTotal = FUNC0(0);
		return -1;
	}
	cp->SG[0].Addr = FUNC2(addr64);
	cp->SG[0].Len = FUNC1(buflen);
	cp->SG[0].Ext = FUNC1(HPSA_SG_LAST); /* we are not chaining */
	cp->Header.SGList = 1;   /* no. SGs contig in this cmd */
	cp->Header.SGTotal = FUNC0(1); /* total sgs in cmd list */
	return 0;
}