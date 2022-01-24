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
struct wsm_set_pm {int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {scalar_t__ uapsd_flags; } ;
struct cw1200_common {struct wsm_set_pm firmware_ps_mode; TYPE_1__ uapsd_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  WSM_PSM_FAST_PS_FLAG ; 
 scalar_t__ FUNC0 (struct wsm_set_pm*,struct wsm_set_pm*,int) ; 
 int FUNC1 (struct cw1200_common*,struct wsm_set_pm*) ; 

int FUNC2(struct cw1200_common *priv, const struct wsm_set_pm *arg)
{
	struct wsm_set_pm pm = *arg;

	if (priv->uapsd_info.uapsd_flags != 0)
		pm.mode &= ~WSM_PSM_FAST_PS_FLAG;

	if (FUNC0(&pm, &priv->firmware_ps_mode,
		   sizeof(struct wsm_set_pm))) {
		priv->firmware_ps_mode = pm;
		return FUNC1(priv, &pm);
	} else {
		return 0;
	}
}