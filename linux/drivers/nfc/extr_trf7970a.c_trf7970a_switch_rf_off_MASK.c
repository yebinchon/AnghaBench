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
struct trf7970a {scalar_t__ state; int aborting; int /*<<< orphan*/  dev; int /*<<< orphan*/  chip_status_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRF7970A_CHIP_STATUS_CTRL ; 
 int /*<<< orphan*/  TRF7970A_CHIP_STATUS_RF_ON ; 
 scalar_t__ TRF7970A_ST_PWR_OFF ; 
 scalar_t__ TRF7970A_ST_RF_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trf7970a*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct trf7970a *trf)
{
	if ((trf->state == TRF7970A_ST_PWR_OFF) ||
	    (trf->state == TRF7970A_ST_RF_OFF))
		return;

	FUNC0(trf->dev, "Switching rf off\n");

	trf->chip_status_ctrl &= ~TRF7970A_CHIP_STATUS_RF_ON;

	FUNC3(trf, TRF7970A_CHIP_STATUS_CTRL, trf->chip_status_ctrl);

	trf->aborting = false;
	trf->state = TRF7970A_ST_RF_OFF;

	FUNC1(trf->dev);
	FUNC2(trf->dev);
}