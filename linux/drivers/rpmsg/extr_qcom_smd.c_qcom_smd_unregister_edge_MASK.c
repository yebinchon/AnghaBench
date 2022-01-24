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
struct qcom_smd_edge {int /*<<< orphan*/  dev; int /*<<< orphan*/  mbox_chan; int /*<<< orphan*/  state_work; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_smd_remove_device ; 

int FUNC6(struct qcom_smd_edge *edge)
{
	int ret;

	FUNC4(edge->irq);
	FUNC0(&edge->scan_work);
	FUNC0(&edge->state_work);

	ret = FUNC2(&edge->dev, NULL, qcom_smd_remove_device);
	if (ret)
		FUNC1(&edge->dev, "can't remove smd device: %d\n", ret);

	FUNC5(edge->mbox_chan);
	FUNC3(&edge->dev);

	return 0;
}