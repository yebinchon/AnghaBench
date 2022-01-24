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
struct wkup_m3_ipc {int /*<<< orphan*/  rproc; int /*<<< orphan*/  sync_complete; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wkup_m3_ipc *m3_ipc)
{
	struct device *dev = m3_ipc->dev;
	int ret;

	FUNC2(&m3_ipc->sync_complete);

	ret = FUNC3(m3_ipc->rproc);
	if (ret)
		FUNC0(dev, "rproc_boot failed\n");

	FUNC1(0);
}