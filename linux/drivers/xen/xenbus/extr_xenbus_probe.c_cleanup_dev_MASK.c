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
struct xenbus_device {char* nodename; } ;
struct xb_find_info {char* nodename; struct xenbus_device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 struct xenbus_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, void *data)
{
	struct xenbus_device *xendev = FUNC4(dev);
	struct xb_find_info *info = data;
	int len = FUNC2(info->nodename);

	FUNC0("%s", info->nodename);

	/* Match the info->nodename path, or any subdirectory of that path. */
	if (FUNC3(xendev->nodename, info->nodename, len))
		return 0;

	/* If the node name is longer, ensure it really is a subdirectory. */
	if ((FUNC2(xendev->nodename) > len) && (xendev->nodename[len] != '/'))
		return 0;

	info->dev = xendev;
	FUNC1(dev);
	return 1;
}