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
struct dcon_priv {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DCON_SOURCE_CPU ; 
 int /*<<< orphan*/  DCON_SOURCE_DCON ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dcon_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dcon_priv*,int /*<<< orphan*/ ) ; 
 struct dcon_priv* FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,unsigned long*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				 struct device_attribute *attr,
				 const char *buf, size_t count)
{
	struct dcon_priv *dcon = FUNC2(dev);
	unsigned long output;
	int ret;

	ret = FUNC3(buf, 10, &output);
	if (ret)
		return ret;

	switch (output) {
	case 0:
		FUNC0(dcon, DCON_SOURCE_CPU);
		break;
	case 1:
		FUNC1(dcon, DCON_SOURCE_DCON);
		break;
	case 2:  /* normally unused */
		FUNC0(dcon, DCON_SOURCE_DCON);
		break;
	default:
		return -EINVAL;
	}

	return count;
}