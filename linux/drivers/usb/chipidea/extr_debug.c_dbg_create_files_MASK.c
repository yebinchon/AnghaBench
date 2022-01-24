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
struct ci_hdrc {int /*<<< orphan*/  debugfs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int S_IRUGO ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  ci_device_fops ; 
 int /*<<< orphan*/  ci_otg_fops ; 
 scalar_t__ FUNC0 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  ci_port_test_fops ; 
 int /*<<< orphan*/  ci_qheads_fops ; 
 int /*<<< orphan*/  ci_registers_fops ; 
 int /*<<< orphan*/  ci_requests_fops ; 
 int /*<<< orphan*/  ci_role_fops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,struct ci_hdrc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct ci_hdrc *ci)
{
	ci->debugfs = FUNC1(FUNC3(ci->dev), NULL);

	FUNC2("device", S_IRUGO, ci->debugfs, ci,
			    &ci_device_fops);
	FUNC2("port_test", S_IRUGO | S_IWUSR, ci->debugfs, ci,
			    &ci_port_test_fops);
	FUNC2("qheads", S_IRUGO, ci->debugfs, ci,
			    &ci_qheads_fops);
	FUNC2("requests", S_IRUGO, ci->debugfs, ci,
			    &ci_requests_fops);

	if (FUNC0(ci)) {
		FUNC2("otg", S_IRUGO, ci->debugfs, ci,
				    &ci_otg_fops);
	}

	FUNC2("role", S_IRUGO | S_IWUSR, ci->debugfs, ci,
			    &ci_role_fops);
	FUNC2("registers", S_IRUGO, ci->debugfs, ci,
			    &ci_registers_fops);
}