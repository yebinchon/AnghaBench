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
struct reset_controller_dev {int dummy; } ;
struct lpc18xx_rgu_data {int /*<<< orphan*/  delay_us; } ;

/* Variables and functions */
#define  LPC43XX_RGU_M0APP_RST 129 
#define  LPC43XX_RGU_M0SUB_RST 128 
 int /*<<< orphan*/  FUNC0 (struct reset_controller_dev*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct reset_controller_dev*,unsigned long,int) ; 
 struct lpc18xx_rgu_data* FUNC2 (struct reset_controller_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct reset_controller_dev *rcdev,
			     unsigned long id)
{
	struct lpc18xx_rgu_data *rc = FUNC2(rcdev);

	FUNC0(rcdev, id);
	FUNC3(rc->delay_us);

	switch (id) {
	case LPC43XX_RGU_M0SUB_RST:
	case LPC43XX_RGU_M0APP_RST:
		FUNC1(rcdev, id, false);
	}

	return 0;
}