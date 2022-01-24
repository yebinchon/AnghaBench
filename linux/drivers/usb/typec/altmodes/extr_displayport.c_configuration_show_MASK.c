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
typedef  int u8 ;
struct TYPE_4__ {int /*<<< orphan*/  conf; } ;
struct dp_altmode {int /*<<< orphan*/  lock; TYPE_2__ data; TYPE_1__* alt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  vdo; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int DP_CAP_DFP_D ; 
 int DP_CAP_UFP_D ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int DP_CONF_DFP_D ; 
 int DP_CONF_UFP_D ; 
 char** configurations ; 
 struct dp_altmode* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				  struct device_attribute *attr, char *buf)
{
	struct dp_altmode *dp = FUNC3(dev);
	int len;
	u8 cap;
	u8 cur;
	int i;

	FUNC4(&dp->lock);

	cap = FUNC1(dp->alt->vdo);
	cur = FUNC2(dp->data.conf);

	len = FUNC6(buf, "%s ", cur ? "USB" : "[USB]");

	for (i = 1; i < FUNC0(configurations); i++) {
		if (i == cur)
			len += FUNC6(buf + len, "[%s] ", configurations[i]);
		else if ((i == DP_CONF_DFP_D && cap & DP_CAP_DFP_D) ||
			 (i == DP_CONF_UFP_D && cap & DP_CAP_UFP_D))
			len += FUNC6(buf + len, "%s ", configurations[i]);
	}

	FUNC5(&dp->lock);

	buf[len - 1] = '\n';
	return len;
}