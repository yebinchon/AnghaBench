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
struct cw1200_common {int /*<<< orphan*/  ps_mode_switch_done; scalar_t__ ps_mode_switch_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct cw1200_common *priv,
				 struct wsm_buf *buf)
{
	/* TODO:  Check buf (struct wsm_set_pm_complete) for validity */
	if (priv->ps_mode_switch_in_progress) {
		priv->ps_mode_switch_in_progress = 0;
		FUNC0(&priv->ps_mode_switch_done);
	}
	return 0;
}