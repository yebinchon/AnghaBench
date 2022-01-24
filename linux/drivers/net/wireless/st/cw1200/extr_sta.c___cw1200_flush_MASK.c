#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  wait_link_id_empty; } ;
struct cw1200_common {TYPE_1__ tx_queue_stats; int /*<<< orphan*/ * tx_queue; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 
 int /*<<< orphan*/  FUNC4 (struct cw1200_common*) ; 

__attribute__((used)) static int FUNC5(struct cw1200_common *priv, bool drop)
{
	int i, ret;

	for (;;) {
		/* TODO: correct flush handling is required when dev_stop.
		 * Temporary workaround: 2s
		 */
		if (drop) {
			for (i = 0; i < 4; ++i)
				FUNC0(&priv->tx_queue[i]);
		} else {
			ret = FUNC2(
				priv->tx_queue_stats.wait_link_id_empty,
				FUNC1(
					&priv->tx_queue_stats, -1),
				2 * HZ);
		}

		if (!drop && ret <= 0) {
			ret = -ETIMEDOUT;
			break;
		} else {
			ret = 0;
		}

		FUNC3(priv);
		if (!FUNC1(&priv->tx_queue_stats, -1)) {
			/* Highly unlikely: WSM requeued frames. */
			FUNC4(priv);
			continue;
		}
		break;
	}
	return ret;
}