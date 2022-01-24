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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dasd_devmap {int features; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int DASD_FEATURE_DEFAULT ; 
 int DASD_FEATURE_USEDIAG ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_devmap*) ; 
 struct dasd_devmap* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr, char *buf)
{
	struct dasd_devmap *devmap;
	int use_diag;

	devmap = FUNC1(FUNC2(dev));
	if (!FUNC0(devmap))
		use_diag = (devmap->features & DASD_FEATURE_USEDIAG) != 0;
	else
		use_diag = (DASD_FEATURE_DEFAULT & DASD_FEATURE_USEDIAG) != 0;
	return FUNC3(buf, use_diag ? "1\n" : "0\n");
}