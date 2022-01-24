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
struct tx_ts_record {int bAddBaReqInProgress; int /*<<< orphan*/  TsAddBaTimer; scalar_t__ bAddBaReqDelayed; } ;
struct rtllib_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  TS_ADDBA_DELAY ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct rtllib_device *ieee, struct tx_ts_record *pTxTS)
{
	if (pTxTS->bAddBaReqInProgress == false) {
		pTxTS->bAddBaReqInProgress = true;

		if (pTxTS->bAddBaReqDelayed) {
			FUNC2(ieee->dev, "Start ADDBA after 60 sec!!\n");
			FUNC0(&pTxTS->TsAddBaTimer, jiffies +
				  FUNC1(TS_ADDBA_DELAY));
		} else {
			FUNC2(ieee->dev, "Immediately Start ADDBA\n");
			FUNC0(&pTxTS->TsAddBaTimer, jiffies+10);
		}
	} else
		FUNC2(ieee->dev, "BA timer is already added\n");
}