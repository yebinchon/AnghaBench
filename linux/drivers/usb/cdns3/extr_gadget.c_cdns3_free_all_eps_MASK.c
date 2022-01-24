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
struct cdns3_device {int /*<<< orphan*/ ** eps; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CDNS3_ENDPOINTS_MAX_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct cdns3_device *priv_dev)
{
	int i;

	/* ep0 OUT point to ep0 IN. */
	priv_dev->eps[16] = NULL;

	for (i = 0; i < CDNS3_ENDPOINTS_MAX_COUNT; i++)
		if (priv_dev->eps[i]) {
			FUNC0(priv_dev->eps[i]);
			FUNC1(priv_dev->dev, priv_dev->eps[i]);
		}
}