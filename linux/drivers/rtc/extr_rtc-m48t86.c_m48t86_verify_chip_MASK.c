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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__) ; 
 scalar_t__ M48T86_NVRAM_LEN ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char,unsigned int) ; 

__attribute__((used)) static bool FUNC3(struct platform_device *pdev)
{
	unsigned int offset0 = FUNC0(M48T86_NVRAM_LEN - 2);
	unsigned int offset1 = FUNC0(M48T86_NVRAM_LEN - 1);
	unsigned char tmp0, tmp1;

	tmp0 = FUNC1(&pdev->dev, offset0);
	tmp1 = FUNC1(&pdev->dev, offset1);

	FUNC2(&pdev->dev, 0x00, offset0);
	FUNC2(&pdev->dev, 0x55, offset1);
	if (FUNC1(&pdev->dev, offset1) == 0x55) {
		FUNC2(&pdev->dev, 0xaa, offset1);
		if (FUNC1(&pdev->dev, offset1) == 0xaa &&
		    FUNC1(&pdev->dev, offset0) == 0x00) {
			FUNC2(&pdev->dev, tmp0, offset0);
			FUNC2(&pdev->dev, tmp1, offset1);

			return true;
		}
	}
	return false;
}