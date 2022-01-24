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
typedef  int u32 ;
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIMINT ; 
 int /*<<< orphan*/  COMBIST ; 
 int ENODEV ; 
 int HARDRST ; 
 int HARDRSTDET ; 
 int PORRSTDET ; 
 int FUNC0 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(struct asd_ha_struct *asd_ha)
{
	int i;
	int count = 100;
	u32 reg;

	for (i = 0 ; i < 4 ; i++) {
		FUNC1(asd_ha, COMBIST, HARDRST);
	}

	do {
		FUNC2(1);
		reg = FUNC0(asd_ha, CHIMINT);
		if (reg & HARDRSTDET) {
			FUNC1(asd_ha, CHIMINT,
					    HARDRSTDET|PORRSTDET);
			return 0;
		}
	} while (--count > 0);

	return -ENODEV;
}