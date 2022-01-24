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
typedef  int /*<<< orphan*/  u32 ;
struct scatterlist {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct scatterlist*) ; 
 struct scatterlist* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,void*,int /*<<< orphan*/ ) ; 

struct scatterlist *FUNC5(struct pci_dev *pdev,
					 unsigned int *nents, u32 length)
{
	struct scatterlist *sg;
	void *addr;

	sg = FUNC1(sizeof(*sg), GFP_KERNEL);
	if (!sg)
		return NULL;

	FUNC3(sg, 1);

	addr = FUNC2(pdev, length);
	if (!addr)
		goto out_free_sg;

	FUNC4(sg, addr, length);
	*nents = 1;
	return sg;

out_free_sg:
	FUNC0(sg);
	return NULL;
}