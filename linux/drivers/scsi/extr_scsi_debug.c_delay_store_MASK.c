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
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int sdebug_jdelay ; 
 int sdebug_max_queue ; 
 scalar_t__ sdebug_ndelay ; 
 struct sdebug_queue* sdebug_q_arr ; 
 int FUNC2 (char const*,char*,int*) ; 
 int submit_queues ; 

__attribute__((used)) static ssize_t FUNC3(struct device_driver *ddp, const char *buf,
			   size_t count)
{
	int jdelay, res;

	if (count > 0 && FUNC2(buf, "%d", &jdelay) == 1) {
		res = count;
		if (sdebug_jdelay != jdelay) {
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
				sdebug_jdelay = jdelay;
				sdebug_ndelay = 0;
			}
			FUNC0(false);
		}
		return res;
	}
	return -EINVAL;
}