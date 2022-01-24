#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ntb_transport_mw {size_t xlat_size; size_t buff_size; size_t alloc_size; int /*<<< orphan*/  dma_addr; } ;
struct ntb_transport_ctx {TYPE_1__* ndev; struct ntb_transport_mw* mw_vec; } ;
typedef  int /*<<< orphan*/  resource_size_t ;
struct TYPE_3__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  PIDX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct ntb_transport_mw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_transport_ctx*,int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ntb_transport_ctx *nt, int num_mw,
		      resource_size_t size)
{
	struct ntb_transport_mw *mw = &nt->mw_vec[num_mw];
	struct pci_dev *pdev = nt->ndev->pdev;
	size_t xlat_size, buff_size;
	resource_size_t xlat_align;
	resource_size_t xlat_align_size;
	int rc;

	if (!size)
		return -EINVAL;

	rc = FUNC3(nt->ndev, PIDX, num_mw, &xlat_align,
			      &xlat_align_size, NULL);
	if (rc)
		return rc;

	xlat_size = FUNC5(size, xlat_align_size);
	buff_size = FUNC5(size, xlat_align);

	/* No need to re-setup */
	if (mw->xlat_size == xlat_size)
		return 0;

	if (mw->buff_size)
		FUNC2(nt, num_mw);

	/* Alloc memory for receiving data.  Must be aligned */
	mw->xlat_size = xlat_size;
	mw->buff_size = buff_size;
	mw->alloc_size = buff_size;

	rc = FUNC1(mw, &pdev->dev, xlat_align);
	if (rc) {
		mw->alloc_size *= 2;
		rc = FUNC1(mw, &pdev->dev, xlat_align);
		if (rc) {
			FUNC0(&pdev->dev,
				"Unable to alloc aligned MW buff\n");
			mw->xlat_size = 0;
			mw->buff_size = 0;
			mw->alloc_size = 0;
			return rc;
		}
	}

	/* Notify HW the memory location of the receive buffer */
	rc = FUNC4(nt->ndev, PIDX, num_mw, mw->dma_addr,
			      mw->xlat_size);
	if (rc) {
		FUNC0(&pdev->dev, "Unable to set mw%d translation", num_mw);
		FUNC2(nt, num_mw);
		return -EIO;
	}

	return 0;
}