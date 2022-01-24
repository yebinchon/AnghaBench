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
struct pm8001_hba_info {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pm8001_hba_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t
FUNC3(struct pm8001_hba_info *pm8001_ha, u8 vec)
{
	FUNC0(pm8001_ha, vec);
	FUNC2(pm8001_ha, vec);
	FUNC1(pm8001_ha, vec);
	return IRQ_HANDLED;
}