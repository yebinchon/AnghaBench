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
struct qcom_glink {int /*<<< orphan*/  rx_work; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  dev; } ;
struct glink_msg {int dummy; } ;
struct glink_defer_cmd {int /*<<< orphan*/  node; int /*<<< orphan*/  msg; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct glink_defer_cmd* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qcom_glink*,int) ; 
 int FUNC6 (struct qcom_glink*) ; 
 int /*<<< orphan*/  FUNC7 (struct qcom_glink*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct qcom_glink *glink, size_t extra)
{
	struct glink_defer_cmd *dcmd;

	extra = FUNC0(extra, 8);

	if (FUNC6(glink) < sizeof(struct glink_msg) + extra) {
		FUNC2(glink->dev, "Insufficient data in rx fifo");
		return -ENXIO;
	}

	dcmd = FUNC3(sizeof(*dcmd) + extra, GFP_ATOMIC);
	if (!dcmd)
		return -ENOMEM;

	FUNC1(&dcmd->node);

	FUNC7(glink, &dcmd->msg, 0, sizeof(dcmd->msg) + extra);

	FUNC9(&glink->rx_lock);
	FUNC4(&dcmd->node, &glink->rx_queue);
	FUNC10(&glink->rx_lock);

	FUNC8(&glink->rx_work);
	FUNC5(glink, sizeof(dcmd->msg) + extra);

	return 0;
}