#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ctcm_priv {TYPE_1__** channel; } ;
struct ccwgroup_device {scalar_t__ state; int /*<<< orphan*/ * cdev; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 scalar_t__ CCWGROUP_OFFLINE ; 
 size_t CTCM_READ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ctcm_priv* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ccwgroup_device *gdev)
{
	struct ctcm_priv *priv = FUNC2(&gdev->dev);
	int rc;

	if (gdev->state == CCWGROUP_OFFLINE)
		return 0;
	rc = FUNC0(gdev->cdev[1]);
	if (rc)
		goto err_out;
	rc = FUNC0(gdev->cdev[0]);
	if (rc)
		goto err_out;
	FUNC1(priv->channel[CTCM_READ]->netdev);
err_out:
	FUNC3(priv->channel[CTCM_READ]->netdev);
	return rc;
}