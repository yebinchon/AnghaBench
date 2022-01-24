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
typedef  int /*<<< orphan*/  u16 ;
struct rio_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHOP ; 
 int EINVAL ; 
 int /*<<< orphan*/  RIO_CM_CHAN_BOUND ; 
 int /*<<< orphan*/  RIO_CM_LISTEN ; 
 int /*<<< orphan*/  FUNC0 (struct rio_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct rio_channel* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rio_channel*) ; 

__attribute__((used)) static int FUNC4(u16 ch_id)
{
	struct rio_channel *ch = NULL;
	int ret = 0;

	FUNC1(CHOP, "(ch_%d)", ch_id);

	ch = FUNC2(ch_id);
	if (!ch)
		return -EINVAL;
	if (!FUNC0(ch, RIO_CM_CHAN_BOUND, RIO_CM_LISTEN))
		ret = -EINVAL;
	FUNC3(ch);
	return ret;
}