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
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARP2INTCTL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  RSTINTCTL ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct asd_ha_struct *asd_ha)
{
	int i;

	for (i = 0; i < 8; i++)
		FUNC4(asd_ha, FUNC0(i), 0xFFFFFFFF);
	for (i = 0; i < 8; i++)
		FUNC2(asd_ha, FUNC1(i));
	/* Reset the external interrupt arbiter. */
	FUNC3(asd_ha, CARP2INTCTL, RSTINTCTL);
}