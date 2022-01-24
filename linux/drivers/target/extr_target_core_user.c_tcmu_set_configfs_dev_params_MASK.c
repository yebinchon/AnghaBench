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
typedef  int /*<<< orphan*/  substring_t ;
struct tcmu_dev {int /*<<< orphan*/  nl_reply_supported; int /*<<< orphan*/  dev_size; int /*<<< orphan*/  dev_config; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_max_sectors; int /*<<< orphan*/  hw_block_size; } ;
struct se_device {TYPE_1__ dev_attrib; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_dev_config 133 
#define  Opt_dev_size 132 
#define  Opt_hw_block_size 131 
#define  Opt_hw_max_sectors 130 
#define  Opt_max_data_area_mb 129 
#define  Opt_nl_reply_supported 128 
 int /*<<< orphan*/  TCMU_CONFIG_LEN ; 
 struct tcmu_dev* FUNC0 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 char* FUNC9 (char**,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct tcmu_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tokens ; 

__attribute__((used)) static ssize_t FUNC12(struct se_device *dev,
		const char *page, ssize_t count)
{
	struct tcmu_dev *udev = FUNC0(dev);
	char *orig, *ptr, *opts;
	substring_t args[MAX_OPT_ARGS];
	int ret = 0, token;

	opts = FUNC2(page, GFP_KERNEL);
	if (!opts)
		return -ENOMEM;

	orig = opts;

	while ((ptr = FUNC9(&opts, ",\n")) != NULL) {
		if (!*ptr)
			continue;

		token = FUNC5(ptr, tokens, args);
		switch (token) {
		case Opt_dev_config:
			if (FUNC4(udev->dev_config, &args[0],
					  TCMU_CONFIG_LEN) == 0) {
				ret = -EINVAL;
				break;
			}
			FUNC7("TCMU: Referencing Path: %s\n", udev->dev_config);
			break;
		case Opt_dev_size:
			ret = FUNC6(&args[0], &udev->dev_size);
			if (ret < 0)
				FUNC8("match_u64() failed for dev_size=. Error %d.\n",
				       ret);
			break;
		case Opt_hw_block_size:
			ret = FUNC10(&args[0],
					&(dev->dev_attrib.hw_block_size));
			break;
		case Opt_hw_max_sectors:
			ret = FUNC10(&args[0],
					&(dev->dev_attrib.hw_max_sectors));
			break;
		case Opt_nl_reply_supported:
			ret = FUNC3(&args[0], &udev->nl_reply_supported);
			if (ret < 0)
				FUNC8("match_int() failed for nl_reply_supported=. Error %d.\n",
				       ret);
			break;
		case Opt_max_data_area_mb:
			ret = FUNC11(udev, &args[0]);
			break;
		default:
			break;
		}

		if (ret)
			break;
	}

	FUNC1(orig);
	return (!ret) ? count : ret;
}