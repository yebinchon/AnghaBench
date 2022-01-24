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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHIMINT ; 
 int COMINT ; 
 int DEVINT ; 
 int DLAVAIL ; 
 int HOSTERR ; 
 int INITERR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*) ; 
 int FUNC5 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 

irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct asd_ha_struct *asd_ha = dev_id;
	u32 chimint = FUNC5(asd_ha, CHIMINT);

	if (!chimint)
		return IRQ_NONE;

	FUNC6(asd_ha, CHIMINT, chimint);
	(void) FUNC5(asd_ha, CHIMINT);

	if (chimint & DLAVAIL)
		FUNC3(asd_ha);
	if (chimint & COMINT)
		FUNC0(asd_ha);
	if (chimint & DEVINT)
		FUNC1(asd_ha);
	if (chimint & INITERR)
		FUNC4(asd_ha);
	if (chimint & HOSTERR)
		FUNC2(asd_ha);

	return IRQ_HANDLED;
}