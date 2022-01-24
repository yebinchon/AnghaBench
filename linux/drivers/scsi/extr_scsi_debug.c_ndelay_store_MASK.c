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
struct sdebug_queue {int /*<<< orphan*/  in_use_bm; } ;
struct device_driver {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEF_JDELAY ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  JDELAY_OVERRIDDEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sdebug_jdelay ; 
 int sdebug_max_queue ; 
 int sdebug_ndelay ; 
 struct sdebug_queue* sdebug_q_arr ; 
 int FUNC2 (char const*,char*,int*) ; 
 int submit_queues ; 

__attribute__((used)) static ssize_t FUNC3(struct device_driver *ddp, const char *buf,
			    size_t count)
{
	int ndelay, res;

	if ((count > 0) && (1 == FUNC2(buf, "%d", &ndelay)) &&
	    (ndelay >= 0) && (ndelay < (1000 * 1000 * 1000))) {
		res = count;
		if (sdebug_ndelay != ndelay) {
			int j, k;
			struct sdebug_queue *sqp;

			FUNC0(true);
			for (j = 0, sqp = sdebug_q_arr; j < submit_queues;
			     ++j, ++sqp) {
				k = FUNC1(sqp->in_use_bm,
						   sdebug_max_queue);
				if (k != sdebug_max_queue) {
					res = -EBUSY;   /* queued commands */
					break;
				}
			}
			if (res > 0) {
				sdebug_ndelay = ndelay;
				sdebug_jdelay = ndelay  ? JDELAY_OVERRIDDEN
							: DEF_JDELAY;
			}
			FUNC0(false);
		}
		return res;
	}
	return -EINVAL;
}