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
typedef  int u32 ;
struct uniphier_tm_dev {TYPE_1__* data; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {scalar_t__ map_base; } ;

/* Variables and functions */
 int ALERT_CH_NUM ; 
 scalar_t__ PMALERTINTCTL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC3(struct uniphier_tm_dev *tdev)
{
	u32 mask = 0, bits = 0;
	int i;

	for (i = 0; i < ALERT_CH_NUM; i++) {
		mask |= (FUNC0(i) | FUNC1(i));
		bits |= FUNC0(i);
	}

	/* clear alert interrupt */
	FUNC2(tdev->regmap,
			  tdev->data->map_base + PMALERTINTCTL, mask, bits);
}