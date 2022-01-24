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
struct nd_namespace_pmem {char* alt_name; } ;
struct nd_namespace_blk {char* alt_name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 struct nd_namespace_blk* FUNC3 (struct device*) ; 
 struct nd_namespace_pmem* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
		struct device_attribute *attr, char *buf)
{
	char *ns_altname;

	if (FUNC1(dev)) {
		struct nd_namespace_pmem *nspm = FUNC4(dev);

		ns_altname = nspm->alt_name;
	} else if (FUNC0(dev)) {
		struct nd_namespace_blk *nsblk = FUNC3(dev);

		ns_altname = nsblk->alt_name;
	} else
		return -ENXIO;

	return FUNC2(buf, "%s\n", ns_altname ? ns_altname : "");
}