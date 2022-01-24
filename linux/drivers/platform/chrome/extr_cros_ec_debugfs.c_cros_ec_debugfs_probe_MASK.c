#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct cros_ec_platform {char* ec_name; } ;
struct cros_ec_dev {struct cros_ec_debugfs* debug_info; TYPE_1__* ec_dev; int /*<<< orphan*/  dev; } ;
struct cros_ec_debugfs {int /*<<< orphan*/  dir; struct cros_ec_dev* ec; } ;
struct TYPE_3__ {int /*<<< orphan*/  last_resume_result; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cros_ec_debugfs*) ; 
 int FUNC1 (struct cros_ec_debugfs*) ; 
 int /*<<< orphan*/  cros_ec_pdinfo_fops ; 
 int /*<<< orphan*/  cros_ec_uptime_fops ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,struct cros_ec_debugfs*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct cros_ec_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 struct cros_ec_platform* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct cros_ec_dev*) ; 
 struct cros_ec_debugfs* FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pd)
{
	struct cros_ec_dev *ec = FUNC6(pd->dev.parent);
	struct cros_ec_platform *ec_platform = FUNC7(ec->dev);
	const char *name = ec_platform->ec_name;
	struct cros_ec_debugfs *debug_info;
	int ret;

	debug_info = FUNC9(ec->dev, sizeof(*debug_info), GFP_KERNEL);
	if (!debug_info)
		return -ENOMEM;

	debug_info->ec = ec;
	debug_info->dir = FUNC2(name, NULL);

	ret = FUNC1(debug_info);
	if (ret)
		goto remove_debugfs;

	ret = FUNC0(debug_info);
	if (ret)
		goto remove_debugfs;

	FUNC3("pdinfo", 0444, debug_info->dir, debug_info,
			    &cros_ec_pdinfo_fops);

	FUNC3("uptime", 0444, debug_info->dir, debug_info,
			    &cros_ec_uptime_fops);

	FUNC4("last_resume_result", 0444, debug_info->dir,
			   &ec->ec_dev->last_resume_result);

	ec->debug_info = debug_info;

	FUNC8(&pd->dev, ec);

	return 0;

remove_debugfs:
	FUNC5(debug_info->dir);
	return ret;
}