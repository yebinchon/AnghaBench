#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_dev {int /*<<< orphan*/  priv_dev; int /*<<< orphan*/  (* recv_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;struct gdm** gdm; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ops; } ;
struct gdm {int index; int minor; struct tty_dev* tty_dev; TYPE_1__ port; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GDM_TTY_MINOR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ISSUE_NUM ; 
 int TTY_MAX_COUNT ; 
 int /*<<< orphan*/ * gdm_driver ; 
 int /*<<< orphan*/  gdm_port_ops ; 
 struct gdm*** gdm_table ; 
 int /*<<< orphan*/  gdm_table_lock ; 
 int /*<<< orphan*/  gdm_tty_recv_complete ; 
 int /*<<< orphan*/  FUNC0 (struct gdm*) ; 
 struct gdm* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int,struct device*) ; 

int FUNC7(struct tty_dev *tty_dev, struct device *device)
{
	struct gdm *gdm;
	int i;
	int j;

	for (i = 0; i < TTY_MAX_COUNT; i++) {
		gdm = FUNC1(sizeof(*gdm), GFP_KERNEL);
		if (!gdm)
			return -ENOMEM;

		FUNC2(&gdm_table_lock);
		for (j = 0; j < GDM_TTY_MINOR; j++) {
			if (!gdm_table[i][j])
				break;
		}

		if (j == GDM_TTY_MINOR) {
			FUNC0(gdm);
			FUNC3(&gdm_table_lock);
			return -EINVAL;
		}

		gdm_table[i][j] = gdm;
		FUNC3(&gdm_table_lock);

		tty_dev->gdm[i] = gdm;
		FUNC5(&gdm->port);

		gdm->port.ops = &gdm_port_ops;
		gdm->index = i;
		gdm->minor = j;
		gdm->tty_dev = tty_dev;

		FUNC6(&gdm->port, gdm_driver[i],
					 gdm->minor, device);
	}

	for (i = 0; i < MAX_ISSUE_NUM; i++)
		gdm->tty_dev->recv_func(gdm->tty_dev->priv_dev,
					gdm_tty_recv_complete);

	return 0;
}