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
struct trf7970a {int chip_status_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRF7970A_CHIP_STATUS_CTRL ; 
 int TRF7970A_CHIP_STATUS_REC_ON ; 
 int /*<<< orphan*/  TRF7970A_CMD_TEST_EXT_RF ; 
 int /*<<< orphan*/  TRF7970A_RSSI_OSC_STATUS ; 
 int TRF7970A_RSSI_OSC_STATUS_RSSI_MASK ; 
 int FUNC0 (struct trf7970a*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct trf7970a*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct trf7970a*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct trf7970a *trf, bool *is_rf_field)
{
	int ret;
	u8 rssi;

	ret = FUNC2(trf, TRF7970A_CHIP_STATUS_CTRL,
			     trf->chip_status_ctrl |
			     TRF7970A_CHIP_STATUS_REC_ON);
	if (ret)
		return ret;

	ret = FUNC0(trf, TRF7970A_CMD_TEST_EXT_RF);
	if (ret)
		return ret;

	FUNC3(50, 60);

	ret = FUNC1(trf, TRF7970A_RSSI_OSC_STATUS, &rssi);
	if (ret)
		return ret;

	ret = FUNC2(trf, TRF7970A_CHIP_STATUS_CTRL,
			     trf->chip_status_ctrl);
	if (ret)
		return ret;

	if (rssi & TRF7970A_RSSI_OSC_STATUS_RSSI_MASK)
		*is_rf_field = true;
	else
		*is_rf_field = false;

	return 0;
}