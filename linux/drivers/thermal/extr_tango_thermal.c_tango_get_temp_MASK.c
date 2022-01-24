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
struct tango_thermal_priv {int thresh_idx; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int IDX_MAX ; 
 int IDX_MIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(void *arg, int *res)
{
	struct tango_thermal_priv *priv = arg;
	int idx = priv->thresh_idx;

	if (FUNC1(priv->base, idx)) {
		/* Search upward by incrementing thresh_idx */
		while (idx < IDX_MAX && FUNC1(priv->base, ++idx))
			FUNC0();
		idx = idx - 1; /* always return lower bound */
	} else {
		/* Search downward by decrementing thresh_idx */
		while (idx > IDX_MIN && !FUNC1(priv->base, --idx))
			FUNC0();
	}

	*res = (idx * 9 / 2 - 38) * 1000; /* millidegrees Celsius */
	priv->thresh_idx = idx;

	return 0;
}