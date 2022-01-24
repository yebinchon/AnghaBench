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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  QM_EIRQ_PEBI ; 
 int /*<<< orphan*/  REG_ERR_ISR ; 
 int /*<<< orphan*/  fqd_a ; 
 int fqd_sz ; 
 int /*<<< orphan*/  pfdr_a ; 
 int pfdr_sz ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qm_dc_portal_fman0 ; 
 int /*<<< orphan*/  qm_dc_portal_fman1 ; 
 int FUNC1 (struct device*,int,int) ; 
 int /*<<< orphan*/  qm_memory_fqd ; 
 int /*<<< orphan*/  qm_memory_pfdr ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int qm_wq_first ; 
 int qm_wq_last ; 

__attribute__((used)) static int FUNC9(struct device *dev)
{
	int i, err;

	/* FQD memory */
	err = FUNC5(qm_memory_fqd, fqd_a, fqd_sz);
	if (err < 0)
		return err;
	/* PFDR memory */
	err = FUNC5(qm_memory_pfdr, pfdr_a, pfdr_sz);
	if (err < 0)
		return err;
	/* Only initialize PFDRs if the QMan was not initialized before */
	if (err == 0) {
		err = FUNC1(dev, 8, pfdr_sz / 64 - 8);
		if (err)
			return err;
	}
	/* thresholds */
	FUNC6(512, 64);
	FUNC7(128);
	/* clear stale PEBI bit from interrupt status register */
	FUNC0(REG_ERR_ISR, QM_EIRQ_PEBI);
	/* corenet initiator settings */
	FUNC2();
	/* HID settings */
	FUNC4();
	/* Set scheduling weights to defaults */
	for (i = qm_wq_first; i <= qm_wq_last; i++)
		FUNC8(i, 0, 0, 0, 0, 0, 0, 0);
	/* We are not prepared to accept ERNs for hardware enqueues */
	FUNC3(qm_dc_portal_fman0, 1, 0);
	FUNC3(qm_dc_portal_fman1, 1, 0);
	return 0;
}