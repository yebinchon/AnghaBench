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
typedef  int u8 ;
struct lp8788_buck2_dvs {int /*<<< orphan*/ * gpio; } ;
struct lp8788_buck1_dvs {int /*<<< orphan*/  gpio; } ;
struct lp8788_buck {int /*<<< orphan*/  lp; scalar_t__ dvs; } ;
typedef  enum lp8788_dvs_mode { ____Placeholder_lp8788_dvs_mode } lp8788_dvs_mode ;
typedef  enum lp8788_buck_id { ____Placeholder_lp8788_buck_id } lp8788_buck_id ;

/* Variables and functions */
#define  BUCK1 129 
#define  BUCK2 128 
 int EXTPIN ; 
 int INVALID_ADDR ; 
 int LP8788_BUCK1_DVS_M ; 
 int LP8788_BUCK1_DVS_S ; 
 int LP8788_BUCK1_VOUT0 ; 
 int LP8788_BUCK2_DVS_M ; 
 int LP8788_BUCK2_DVS_S ; 
 int LP8788_BUCK2_VOUT0 ; 
 int /*<<< orphan*/  LP8788_BUCK_DVS_SEL ; 
 int PIN_HIGH ; 
 int PIN_LOW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lp8788_buck*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u8 FUNC3(struct lp8788_buck *buck,
					enum lp8788_buck_id id)
{
	enum lp8788_dvs_mode mode = FUNC1(buck, id);
	struct lp8788_buck1_dvs *b1_dvs;
	struct lp8788_buck2_dvs *b2_dvs;
	u8 val, idx, addr;
	int pin1, pin2;

	switch (id) {
	case BUCK1:
		if (mode == EXTPIN) {
			b1_dvs = (struct lp8788_buck1_dvs *)buck->dvs;
			if (!b1_dvs)
				goto err;

			idx = FUNC0(b1_dvs->gpio) ? 1 : 0;
		} else {
			FUNC2(buck->lp, LP8788_BUCK_DVS_SEL, &val);
			idx = (val & LP8788_BUCK1_DVS_M) >> LP8788_BUCK1_DVS_S;
		}
		addr = LP8788_BUCK1_VOUT0 + idx;
		break;
	case BUCK2:
		if (mode == EXTPIN) {
			b2_dvs = (struct lp8788_buck2_dvs *)buck->dvs;
			if (!b2_dvs)
				goto err;

			pin1 = FUNC0(b2_dvs->gpio[0]);
			pin2 = FUNC0(b2_dvs->gpio[1]);

			if (pin1 == PIN_LOW && pin2 == PIN_LOW)
				idx = 0;
			else if (pin1 == PIN_LOW && pin2 == PIN_HIGH)
				idx = 2;
			else if (pin1 == PIN_HIGH && pin2 == PIN_LOW)
				idx = 1;
			else
				idx = 3;
		} else {
			FUNC2(buck->lp, LP8788_BUCK_DVS_SEL, &val);
			idx = (val & LP8788_BUCK2_DVS_M) >> LP8788_BUCK2_DVS_S;
		}
		addr = LP8788_BUCK2_VOUT0 + idx;
		break;
	default:
		goto err;
	}

	return addr;
err:
	return INVALID_ADDR;
}