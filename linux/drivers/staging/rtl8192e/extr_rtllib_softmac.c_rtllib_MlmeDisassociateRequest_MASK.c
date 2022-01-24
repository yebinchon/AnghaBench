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
typedef  int u8 ;
struct TYPE_2__ {int* bssid; } ;
struct rtllib_device {TYPE_1__ current_network; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* SetHwRegHandler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ;void* OpMode; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_VAR_BSSID ; 
 int /*<<< orphan*/  HW_VAR_MEDIA_STATUS ; 
 int /*<<< orphan*/  RTLLIB_NOLINK ; 
 void* RT_OP_MODE_NO_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct rtllib_device*,int*) ; 
 scalar_t__ FUNC1 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC5(struct rtllib_device *rtllib,
					   u8 *asSta, u8 asRsn)
{
	u8 i;
	u8	OpMode;

	FUNC0(rtllib, asSta);

	if (FUNC1(rtllib->current_network.bssid, asSta, 6) == 0) {
		rtllib->state = RTLLIB_NOLINK;

		for (i = 0; i < 6; i++)
			rtllib->current_network.bssid[i] = 0x22;
		OpMode = RT_OP_MODE_NO_LINK;
		rtllib->OpMode = RT_OP_MODE_NO_LINK;
		rtllib->SetHwRegHandler(rtllib->dev, HW_VAR_MEDIA_STATUS,
					(u8 *)(&OpMode));
		FUNC2(rtllib);

		rtllib->SetHwRegHandler(rtllib->dev, HW_VAR_BSSID,
					rtllib->current_network.bssid);

	}

}