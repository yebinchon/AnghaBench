#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kpc_dma_device {int /*<<< orphan*/  open_count; struct kpc_dma_descriptor* desc_completed; TYPE_1__* pldev; struct kpc_dma_descriptor* desc_next; } ;
struct kpc_dma_descriptor {int DescControlFlags; struct kpc_dma_descriptor* Next; scalar_t__ acd; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct dev_private_data {struct kpc_dma_device* ldev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACD_FLAG_ABORT ; 
 int DMA_DESC_CTL_EOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kpc_dma_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct kpc_dma_descriptor*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_private_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct kpc_dma_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct kpc_dma_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct kpc_dma_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kpc_dma_device*) ; 

__attribute__((used)) static
int  FUNC9(struct inode *inode, struct file *filp)
{
	struct kpc_dma_descriptor *cur;
	struct dev_private_data *priv = (struct dev_private_data *)filp->private_data;
	struct kpc_dma_device *eng = priv->ldev;

	FUNC4(eng);

	FUNC6(eng);

	cur = eng->desc_completed->Next;
	while (cur != eng->desc_next) {
		FUNC2(&eng->pldev->dev, "Aborting descriptor %p (acd = %p)\n", cur, cur->acd);
		if (cur->DescControlFlags & DMA_DESC_CTL_EOP) {
			if (cur->acd)
				FUNC7(cur->acd, 0, ACD_FLAG_ABORT);
		}

		FUNC1(cur);
		eng->desc_completed = cur;

		cur = cur->Next;
	}

	FUNC5(eng);

	FUNC8(eng);

	FUNC0(&priv->ldev->open_count); /* release the device */
	FUNC3(priv);
	return 0;
}