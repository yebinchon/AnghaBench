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
struct ufs_clk_scaling {int is_busy_started; scalar_t__ busy_start_t; scalar_t__ tot_busy_t; scalar_t__ window_start_t; } ;
struct ufs_hba {TYPE_1__* host; scalar_t__ outstanding_reqs; struct ufs_clk_scaling clk_scaling; } ;
struct device {int dummy; } ;
struct devfreq_dev_status {scalar_t__ busy_time; int /*<<< orphan*/  total_time; } ;
struct TYPE_2__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ufs_hba* FUNC0 (struct device*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct devfreq_dev_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct ufs_hba*) ; 

__attribute__((used)) static int FUNC9(struct device *dev,
		struct devfreq_dev_status *stat)
{
	struct ufs_hba *hba = FUNC0(dev);
	struct ufs_clk_scaling *scaling = &hba->clk_scaling;
	unsigned long flags;

	if (!FUNC8(hba))
		return -EINVAL;

	FUNC5(stat, 0, sizeof(*stat));

	FUNC6(hba->host->host_lock, flags);
	if (!scaling->window_start_t)
		goto start_window;

	if (scaling->is_busy_started)
		scaling->tot_busy_t += FUNC4(FUNC3(FUNC2(),
					scaling->busy_start_t));

	stat->total_time = FUNC1((long)jiffies -
				(long)scaling->window_start_t);
	stat->busy_time = scaling->tot_busy_t;
start_window:
	scaling->window_start_t = jiffies;
	scaling->tot_busy_t = 0;

	if (hba->outstanding_reqs) {
		scaling->busy_start_t = FUNC2();
		scaling->is_busy_started = true;
	} else {
		scaling->busy_start_t = 0;
		scaling->is_busy_started = false;
	}
	FUNC7(hba->host->host_lock, flags);
	return 0;
}