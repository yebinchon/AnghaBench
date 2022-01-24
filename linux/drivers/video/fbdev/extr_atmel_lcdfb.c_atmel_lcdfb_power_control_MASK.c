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
struct atmel_lcdfb_pdata {int /*<<< orphan*/  (* atmel_lcdfb_power_control ) (struct atmel_lcdfb_pdata*,int) ;} ;
struct atmel_lcdfb_info {TYPE_1__* pdev; scalar_t__ reg_lcd; struct atmel_lcdfb_pdata pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_lcdfb_pdata*,int) ; 

__attribute__((used)) static inline void FUNC4(struct atmel_lcdfb_info *sinfo, int on)
{
	int ret;
	struct atmel_lcdfb_pdata *pdata = &sinfo->pdata;

	if (pdata->atmel_lcdfb_power_control)
		pdata->atmel_lcdfb_power_control(pdata, on);
	else if (sinfo->reg_lcd) {
		if (on) {
			ret = FUNC2(sinfo->reg_lcd);
			if (ret)
				FUNC0(&sinfo->pdev->dev,
					"lcd regulator enable failed:	%d\n", ret);
		} else {
			ret = FUNC1(sinfo->reg_lcd);
			if (ret)
				FUNC0(&sinfo->pdev->dev,
					"lcd regulator disable failed: %d\n", ret);
		}
	}
}