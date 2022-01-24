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
struct xcopy_dev_search_info {unsigned char const* dev_wwn; struct se_device* found_dev; } ;
struct se_device {int dummy; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct xcopy_dev_search_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct xcopy_dev_search_info*) ; 
 int /*<<< orphan*/  target_xcopy_locate_se_dev_e4_iter ; 

__attribute__((used)) static int FUNC3(const unsigned char *dev_wwn,
					struct se_device **found_dev)
{
	struct xcopy_dev_search_info info;
	int ret;

	FUNC0(&info, 0, sizeof(info));
	info.dev_wwn = dev_wwn;

	ret = FUNC2(target_xcopy_locate_se_dev_e4_iter, &info);
	if (ret == 1) {
		*found_dev = info.found_dev;
		return 0;
	} else {
		FUNC1("Unable to locate 0xe4 descriptor for EXTENDED_COPY\n");
		return -EINVAL;
	}
}