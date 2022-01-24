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
struct m48t59_private {int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M48T59_INTR ; 
 int M48T59_INTR_AFE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct m48t59_private* FUNC1 (struct device*) ; 
 struct m48t59_plat_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct device *dev, unsigned int enabled)
{
	struct m48t59_plat_data *pdata = FUNC2(dev);
	struct m48t59_private *m48t59 = FUNC1(dev);
	unsigned long flags;

	FUNC3(&m48t59->lock, flags);
	if (enabled)
		FUNC0(M48T59_INTR_AFE, M48T59_INTR);
	else
		FUNC0(0x00, M48T59_INTR);
	FUNC4(&m48t59->lock, flags);

	return 0;
}