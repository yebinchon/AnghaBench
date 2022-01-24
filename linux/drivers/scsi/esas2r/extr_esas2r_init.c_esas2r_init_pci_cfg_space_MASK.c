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
typedef  int u16 ;
struct esas2r_adapter {int /*<<< orphan*/  pcid; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESAS2R_LOG_INFO ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_READRQ ; 
 int PCI_EXP_DEVCTL_READRQ_512B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct esas2r_adapter *a)
{
	if (FUNC1(a->pcid)) {
		u16 devcontrol;

		FUNC2(a->pcid, PCI_EXP_DEVCTL, &devcontrol);

		if ((devcontrol & PCI_EXP_DEVCTL_READRQ) >
		     PCI_EXP_DEVCTL_READRQ_512B) {
			FUNC0(ESAS2R_LOG_INFO,
				   "max read request size > 512B");

			devcontrol &= ~PCI_EXP_DEVCTL_READRQ;
			devcontrol |= PCI_EXP_DEVCTL_READRQ_512B;
			FUNC3(a->pcid, PCI_EXP_DEVCTL,
						   devcontrol);
		}
	}
}