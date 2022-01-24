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
struct TYPE_3__ {int /*<<< orphan*/  conf; } ;
struct dp_altmode {int /*<<< orphan*/  lock; TYPE_2__* alt; TYPE_1__ data; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  vdo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DP_CONF_DFP_D ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dp_altmode* FUNC4 (struct device*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 char** pin_assignments ; 
 scalar_t__ FUNC8 (char*,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
				   struct device_attribute *attr, char *buf)
{
	struct dp_altmode *dp = FUNC4(dev);
	u8 assignments;
	int len = 0;
	u8 cur;
	int i;

	FUNC6(&dp->lock);

	cur = FUNC5(FUNC3(dp->data.conf));

	if (FUNC2(dp->data.conf) == DP_CONF_DFP_D)
		assignments = FUNC1(dp->alt->vdo);
	else
		assignments = FUNC0(dp->alt->vdo);

	for (i = 0; assignments; assignments >>= 1, i++) {
		if (assignments & 1) {
			if (i == cur)
				len += FUNC8(buf + len, "[%s] ",
					       pin_assignments[i]);
			else
				len += FUNC8(buf + len, "%s ",
					       pin_assignments[i]);
		}
	}

	FUNC7(&dp->lock);

	buf[len - 1] = '\n';
	return len;
}