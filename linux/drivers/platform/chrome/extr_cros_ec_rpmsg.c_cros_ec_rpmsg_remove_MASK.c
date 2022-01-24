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
struct rpmsg_device {int /*<<< orphan*/  dev; } ;
struct cros_ec_rpmsg {int /*<<< orphan*/  host_event_work; int /*<<< orphan*/  ept; } ;
struct cros_ec_device {struct cros_ec_rpmsg* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cros_ec_device*) ; 
 struct cros_ec_device* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct rpmsg_device *rpdev)
{
	struct cros_ec_device *ec_dev = FUNC2(&rpdev->dev);
	struct cros_ec_rpmsg *ec_rpmsg = ec_dev->priv;

	FUNC1(ec_dev);
	FUNC3(ec_rpmsg->ept);
	FUNC0(&ec_rpmsg->host_event_work);
}