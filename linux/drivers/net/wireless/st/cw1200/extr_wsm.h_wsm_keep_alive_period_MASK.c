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
struct wsm_keep_alive_period {int /*<<< orphan*/  period; } ;
struct cw1200_common {int dummy; } ;
typedef  int /*<<< orphan*/  arg ;

/* Variables and functions */
 int /*<<< orphan*/  WSM_MIB_ID_KEEP_ALIVE_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct cw1200_common*,int /*<<< orphan*/ ,struct wsm_keep_alive_period*,int) ; 

__attribute__((used)) static inline int FUNC2(struct cw1200_common *priv,
					int period)
{
	struct wsm_keep_alive_period arg = {
		.period = FUNC0(period),
	};
	return FUNC1(priv, WSM_MIB_ID_KEEP_ALIVE_PERIOD,
			&arg, sizeof(arg));
}