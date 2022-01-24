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
typedef  char u8 ;
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pch_dev {TYPE_1__* regs; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/ * ts_st; } ;

/* Variables and functions */
 int PCH_INVALIDPARAM ; 
 int PCH_STATION_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 struct pch_dev* FUNC4 (struct pci_dev*) ; 

int FUNC5(u8 *addr, struct pci_dev *pdev)
{
	s32 i;
	struct pch_dev *chip = FUNC4(pdev);

	/* Verify the parameter */
	if ((chip->regs == NULL) || addr == (u8 *)NULL) {
		FUNC1(&pdev->dev,
			"invalid params returning PCH_INVALIDPARAM\n");
		return PCH_INVALIDPARAM;
	}
	/* For all station address bytes */
	for (i = 0; i < PCH_STATION_BYTES; i++) {
		u32 val;
		s32 tmp;

		tmp = FUNC2(addr[i * 3]);
		if (tmp < 0) {
			FUNC1(&pdev->dev,
				"invalid params returning PCH_INVALIDPARAM\n");
			return PCH_INVALIDPARAM;
		}
		val = tmp * 16;
		tmp = FUNC2(addr[(i * 3) + 1]);
		if (tmp < 0) {
			FUNC1(&pdev->dev,
				"invalid params returning PCH_INVALIDPARAM\n");
			return PCH_INVALIDPARAM;
		}
		val += tmp;
		/* Expects ':' separated addresses */
		if ((i < 5) && (addr[(i * 3) + 2] != ':')) {
			FUNC1(&pdev->dev,
				"invalid params returning PCH_INVALIDPARAM\n");
			return PCH_INVALIDPARAM;
		}

		/* Ideally we should set the address only after validating
							 entire string */
		FUNC0(&pdev->dev, "invoking pch_station_set\n");
		FUNC3(val, &chip->regs->ts_st[i]);
	}
	return 0;
}