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
typedef  int /*<<< orphan*/  u8 ;
struct siox_master {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct siox_master*,char*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,char*,char*,size_t*,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 struct siox_master* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr,
				const char *buf, size_t count)
{
	struct siox_master *smaster = FUNC3(dev);
	int ret;
	char type[20] = "";
	size_t inbytes = 0, outbytes = 0;
	u8 statustype = 0;

	ret = FUNC1(buf, "%19s %zu %zu %hhu", type, &inbytes,
		     &outbytes, &statustype);
	if (ret != 3 && ret != 4)
		return -EINVAL;

	if (FUNC2(type, "siox-12x8") || inbytes != 2 || outbytes != 4)
		return -EINVAL;

	FUNC0(smaster, "siox-12x8", inbytes, outbytes, statustype);

	return count;
}