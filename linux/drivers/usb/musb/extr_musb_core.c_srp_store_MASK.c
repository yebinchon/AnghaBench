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
struct musb {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct musb* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int FUNC3 (char const*,char*,unsigned short*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
		const char *buf, size_t n)
{
	struct musb	*musb = FUNC1(dev);
	unsigned short	srp;

	if (FUNC3(buf, "%hu", &srp) != 1
			|| (srp != 1)) {
		FUNC0(dev, "SRP: Value must be 1\n");
		return -EINVAL;
	}

	if (srp == 1)
		FUNC2(musb);

	return n;
}