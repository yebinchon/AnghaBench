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
typedef  int u32 ;
struct tsens_sensor {int /*<<< orphan*/  status; } ;
struct tsens_priv {int /*<<< orphan*/  tm_map; struct tsens_sensor* sensor; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  INT_STATUS_ADDR ; 
 int /*<<< orphan*/  TIMEOUT_US ; 
 int TRDY_MASK ; 
 int FUNC0 (int,struct tsens_sensor const*) ; 
 unsigned long jiffies ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tsens_priv *priv, int id, int *temp)
{
	int ret;
	u32 code, trdy;
	const struct tsens_sensor *s = &priv->sensor[id];
	unsigned long timeout;

	timeout = jiffies + FUNC3(TIMEOUT_US);
	do {
		ret = FUNC1(priv->tm_map, INT_STATUS_ADDR, &trdy);
		if (ret)
			return ret;
		if (!(trdy & TRDY_MASK))
			continue;
		ret = FUNC1(priv->tm_map, s->status, &code);
		if (ret)
			return ret;
		*temp = FUNC0(code, s);
		return 0;
	} while (FUNC2(jiffies, timeout));

	return -ETIMEDOUT;
}