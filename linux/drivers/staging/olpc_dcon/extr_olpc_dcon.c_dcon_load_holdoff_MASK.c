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
struct dcon_priv {int /*<<< orphan*/  load_time; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int NSEC_PER_MSEC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct dcon_priv *dcon)
{
	ktime_t delta_t, now;

	while (1) {
		now = FUNC0();
		delta_t = FUNC1(now, dcon->load_time);
		if (FUNC2(delta_t) > NSEC_PER_MSEC * 20)
			break;
		FUNC3(4);
	}
}