#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aac_dev {int /*<<< orphan*/  max_msix; TYPE_2__* init; int /*<<< orphan*/  sync_mode; scalar_t__ msi_enabled; } ;
struct TYPE_6__ {int /*<<< orphan*/  OMR; } ;
struct TYPE_4__ {int /*<<< orphan*/  no_of_msix_vectors; } ;
struct TYPE_5__ {TYPE_1__ r7; } ;

/* Variables and functions */
 int /*<<< orphan*/  AAC_ENABLE_MSIX ; 
 unsigned long KERNEL_UP_AND_RUNNING ; 
 TYPE_3__ MUnit ; 
 scalar_t__ FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct aac_dev*) ; 
 scalar_t__ FUNC6 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct aac_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 unsigned long FUNC10 (struct aac_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct aac_dev *dev)
{
	unsigned long status;
	/*
	 *	First clear out all interrupts.  Then enable the one's that we
	 *	can handle.
	 */
	while (!((status = FUNC10(dev, MUnit.OMR)) & KERNEL_UP_AND_RUNNING)
		|| status == 0xffffffff)
			FUNC9(20);

	FUNC1(dev);
	FUNC2(dev);


	if (FUNC6(dev))
		FUNC4(dev);

	if (dev->msi_enabled)
		FUNC7(dev, AAC_ENABLE_MSIX);

	if (FUNC0(dev))
		goto error_iounmap;

	FUNC2(dev);

	/*max msix may change  after EEH
	 * Re-assign vectors to fibs
	 */
	FUNC5(dev);

	if (!dev->sync_mode) {
		/* After EEH recovery or suspend resume, max_msix count
		 * may change, therefore updating in init as well.
		 */
		dev->init->r7.no_of_msix_vectors = FUNC8(dev->max_msix);
		FUNC3(dev);
	}
	return 0;

error_iounmap:
	return -1;

}