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
struct pci_dev {int dummy; } ;
struct mite {scalar_t__ mmio; TYPE_1__* channels; struct pci_dev* pcidev; int /*<<< orphan*/  lock; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {unsigned int channel; int done; struct mite* mite; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int MAX_MITE_DMA_CHANNELS ; 
 struct pci_dev* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mite*) ; 
 struct mite* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct comedi_device*,struct mite*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct mite *FUNC6(struct comedi_device *dev, bool use_win1)
{
	struct pci_dev *pcidev = FUNC0(dev);
	struct mite *mite;
	unsigned int i;
	int ret;

	mite = FUNC3(sizeof(*mite), GFP_KERNEL);
	if (!mite)
		return NULL;

	FUNC5(&mite->lock);
	mite->pcidev = pcidev;
	for (i = 0; i < MAX_MITE_DMA_CHANNELS; ++i) {
		mite->channels[i].mite = mite;
		mite->channels[i].channel = i;
		mite->channels[i].done = 1;
	}

	ret = FUNC4(dev, mite, use_win1);
	if (ret) {
		if (mite->mmio)
			FUNC1(mite->mmio);
		FUNC2(mite);
		return NULL;
	}

	return mite;
}