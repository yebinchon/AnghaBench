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
struct se_device {int dummy; } ;
struct tcmu_dev {int qfull_time_out; struct se_device se_dev; int /*<<< orphan*/  data_blocks; int /*<<< orphan*/  cmd_timer; int /*<<< orphan*/  qfull_timer; int /*<<< orphan*/  commands; int /*<<< orphan*/  inflight_queue; int /*<<< orphan*/  qfull_queue; int /*<<< orphan*/  timedout_entry; int /*<<< orphan*/  node; int /*<<< orphan*/  cmdr_lock; int /*<<< orphan*/  max_blocks; int /*<<< orphan*/  cmd_time_out; struct se_hba* hba; int /*<<< orphan*/  name; int /*<<< orphan*/  kref; } ;
struct se_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_BLOCK_BITS_DEF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCMU_TIME_OUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tcmu_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 struct tcmu_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcmu_cmd_timedout ; 
 int /*<<< orphan*/  tcmu_qfull_timedout ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct se_device *FUNC9(struct se_hba *hba, const char *name)
{
	struct tcmu_dev *udev;

	udev = FUNC6(sizeof(struct tcmu_dev), GFP_KERNEL);
	if (!udev)
		return NULL;
	FUNC4(&udev->kref);

	udev->name = FUNC5(name, GFP_KERNEL);
	if (!udev->name) {
		FUNC3(udev);
		return NULL;
	}

	udev->hba = hba;
	udev->cmd_time_out = TCMU_TIME_OUT;
	udev->qfull_time_out = -1;

	udev->max_blocks = DATA_BLOCK_BITS_DEF;
	FUNC7(&udev->cmdr_lock);

	FUNC0(&udev->node);
	FUNC0(&udev->timedout_entry);
	FUNC0(&udev->qfull_queue);
	FUNC0(&udev->inflight_queue);
	FUNC2(&udev->commands);

	FUNC8(&udev->qfull_timer, tcmu_qfull_timedout, 0);
	FUNC8(&udev->cmd_timer, tcmu_cmd_timedout, 0);

	FUNC1(&udev->data_blocks, GFP_KERNEL);

	return &udev->se_dev;
}