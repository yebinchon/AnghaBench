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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct m48t59_private {int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 struct m48t59_plat_data* FUNC1 (struct device*) ; 
 struct m48t59_private* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(void *priv, unsigned int offset, void *val,
			      size_t size)
{
	struct platform_device *pdev = priv;
	struct device *dev = &pdev->dev;
	struct m48t59_plat_data *pdata = FUNC1(&pdev->dev);
	struct m48t59_private *m48t59 = FUNC2(pdev);
	ssize_t cnt = 0;
	unsigned long flags;
	u8 *buf = val;

	FUNC3(&m48t59->lock, flags);

	for (; cnt < size; cnt++)
		FUNC0(*buf++, cnt);

	FUNC4(&m48t59->lock, flags);

	return 0;
}