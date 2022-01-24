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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct typec_partner_desc {int usb_pd; int /*<<< orphan*/ * identity; int /*<<< orphan*/  accessory; } ;
struct tps6598x {int /*<<< orphan*/  partner; int /*<<< orphan*/  port; int /*<<< orphan*/  partner_identity; } ;
typedef  enum typec_pwr_opmode { ____Placeholder_typec_pwr_opmode } typec_pwr_opmode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TPS_REG_POWER_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPEC_ACCESSORY_NONE ; 
 int TYPEC_PWR_MODE_PD ; 
 int FUNC6 (struct tps6598x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct tps6598x*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct typec_partner_desc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct tps6598x *tps, u32 status)
{
	struct typec_partner_desc desc;
	enum typec_pwr_opmode mode;
	u16 pwr_status;
	int ret;

	if (tps->partner)
		return 0;

	ret = FUNC6(tps, TPS_REG_POWER_STATUS, &pwr_status);
	if (ret < 0)
		return ret;

	mode = FUNC2(pwr_status);

	desc.usb_pd = mode == TYPEC_PWR_MODE_PD;
	desc.accessory = TYPEC_ACCESSORY_NONE; /* XXX: handle accessories */
	desc.identity = NULL;

	if (desc.usb_pd) {
		ret = FUNC7(tps);
		if (ret)
			return ret;
		desc.identity = &tps->partner_identity;
	}

	FUNC11(tps->port, mode);
	FUNC12(tps->port, FUNC4(status));
	FUNC13(tps->port, FUNC5(status));
	FUNC10(tps->port, FUNC3(status));

	tps->partner = FUNC9(tps->port, &desc);
	if (FUNC0(tps->partner))
		return FUNC1(tps->partner);

	if (desc.identity)
		FUNC8(tps->partner);

	return 0;
}