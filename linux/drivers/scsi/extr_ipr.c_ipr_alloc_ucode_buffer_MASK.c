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
struct ipr_sglist {int order; int /*<<< orphan*/  scatterlist; int /*<<< orphan*/  num_sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IPR_MAX_SGLIST ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  ipr_trace ; 
 int /*<<< orphan*/  FUNC1 (struct ipr_sglist*) ; 
 struct ipr_sglist* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ipr_sglist *FUNC4(int buf_len)
{
	int sg_size, order;
	struct ipr_sglist *sglist;

	/* Get the minimum size per scatter/gather element */
	sg_size = buf_len / (IPR_MAX_SGLIST - 1);

	/* Get the actual size per element */
	order = FUNC0(sg_size);

	/* Allocate a scatter/gather list for the DMA */
	sglist = FUNC2(sizeof(struct ipr_sglist), GFP_KERNEL);
	if (sglist == NULL) {
		ipr_trace;
		return NULL;
	}
	sglist->order = order;
	sglist->scatterlist = FUNC3(buf_len, order, false, GFP_KERNEL,
					      &sglist->num_sg);
	if (!sglist->scatterlist) {
		FUNC1(sglist);
		return NULL;
	}

	return sglist;
}