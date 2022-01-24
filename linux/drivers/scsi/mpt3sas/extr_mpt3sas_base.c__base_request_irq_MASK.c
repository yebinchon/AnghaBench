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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int dummy; } ;
struct adapter_reply_queue {int /*<<< orphan*/  list; int /*<<< orphan*/  name; int /*<<< orphan*/  busy; int /*<<< orphan*/  msix_index; struct MPT3SAS_ADAPTER* ioc; } ;
struct MPT3SAS_ADAPTER {char* driver_name; int id; int /*<<< orphan*/  reply_queue_list; scalar_t__ msix_enable; struct pci_dev* pdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MPT_NAME_LENGTH ; 
 int /*<<< orphan*/  _base_interrupt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter_reply_queue*) ; 
 struct adapter_reply_queue* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adapter_reply_queue*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int,...) ; 

__attribute__((used)) static int
FUNC10(struct MPT3SAS_ADAPTER *ioc, u8 index)
{
	struct pci_dev *pdev = ioc->pdev;
	struct adapter_reply_queue *reply_q;
	int r;

	reply_q =  FUNC4(sizeof(struct adapter_reply_queue), GFP_KERNEL);
	if (!reply_q) {
		FUNC2(ioc, "unable to allocate memory %zu!\n",
			sizeof(struct adapter_reply_queue));
		return -ENOMEM;
	}
	reply_q->ioc = ioc;
	reply_q->msix_index = index;

	FUNC1(&reply_q->busy, 0);
	if (ioc->msix_enable)
		FUNC9(reply_q->name, MPT_NAME_LENGTH, "%s%d-msix%d",
		    ioc->driver_name, ioc->id, index);
	else
		FUNC9(reply_q->name, MPT_NAME_LENGTH, "%s%d",
		    ioc->driver_name, ioc->id);
	r = FUNC8(FUNC6(pdev, index), _base_interrupt,
			IRQF_SHARED, reply_q->name, reply_q);
	if (r) {
		FUNC7("%s: unable to allocate interrupt %d!\n",
		       reply_q->name, FUNC6(pdev, index));
		FUNC3(reply_q);
		return -EBUSY;
	}

	FUNC0(&reply_q->list);
	FUNC5(&reply_q->list, &ioc->reply_queue_list);
	return 0;
}