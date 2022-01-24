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
struct wsm_buf {int dummy; } ;
struct cw1200_common {int /*<<< orphan*/  channel_switch_done; scalar_t__ channel_switch_in_progress; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wsm_buf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cw1200_common*) ; 

__attribute__((used)) static int FUNC4(struct cw1200_common *priv,
					 struct wsm_buf *buf)
{
	FUNC0(FUNC1(buf));

	priv->channel_switch_in_progress = 0;
	FUNC2(&priv->channel_switch_done);

	FUNC3(priv);

	return 0;

underflow:
	return -EINVAL;
}