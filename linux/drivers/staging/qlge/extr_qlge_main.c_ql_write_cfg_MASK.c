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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct ql_adapter {int /*<<< orphan*/  pdev; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG ; 
 int CFG_LCQ ; 
 int CFG_LR ; 
 int CFG_LRQ ; 
 int CFG_Q_MASK ; 
 int CFG_Q_SHIFT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ICB_H ; 
 int /*<<< orphan*/  ICB_L ; 
 int PCI_DMA_FROMDEVICE ; 
 int PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  SEM_ICB_MASK ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC0 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ql_adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ql_adapter*,int /*<<< orphan*/ ,int) ; 

int FUNC8(struct ql_adapter *qdev, void *ptr, int size, u32 bit,
		 u16 q_id)
{
	u64 map;
	int status = 0;
	int direction;
	u32 mask;
	u32 value;

	direction =
	    (bit & (CFG_LRQ | CFG_LR | CFG_LCQ)) ? PCI_DMA_TODEVICE :
	    PCI_DMA_FROMDEVICE;

	map = FUNC2(qdev->pdev, ptr, size, direction);
	if (FUNC1(qdev->pdev, map)) {
		FUNC0(qdev, ifup, qdev->ndev, "Couldn't map DMA area.\n");
		return -ENOMEM;
	}

	status = FUNC4(qdev, SEM_ICB_MASK);
	if (status)
		return status;

	status = FUNC6(qdev, bit);
	if (status) {
		FUNC0(qdev, ifup, qdev->ndev,
			  "Timed out waiting for CFG to come ready.\n");
		goto exit;
	}

	FUNC7(qdev, ICB_L, (u32) map);
	FUNC7(qdev, ICB_H, (u32) (map >> 32));

	mask = CFG_Q_MASK | (bit << 16);
	value = bit | (q_id << CFG_Q_SHIFT);
	FUNC7(qdev, CFG, (mask | value));

	/*
	 * Wait for the bit to clear after signaling hw.
	 */
	status = FUNC6(qdev, bit);
exit:
	FUNC5(qdev, SEM_ICB_MASK);	/* does flush too */
	FUNC3(qdev->pdev, map, size, direction);
	return status;
}