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
struct r3964_info {scalar_t__ nRetry; int /*<<< orphan*/  state; int /*<<< orphan*/  tmr; scalar_t__ bcc; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAK ; 
 int /*<<< orphan*/  R3964_IDLE ; 
 scalar_t__ R3964_MAX_RETRIES ; 
 scalar_t__ R3964_TO_QVZ ; 
 int /*<<< orphan*/  R3964_TX_FAIL ; 
 int /*<<< orphan*/  R3964_TX_REQUEST ; 
 int /*<<< orphan*/  STX ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct r3964_info*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct r3964_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r3964_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct r3964_info*) ; 

__attribute__((used)) static void FUNC6(struct r3964_info *pInfo)
{
	if (pInfo->nRetry < R3964_MAX_RETRIES) {
		FUNC0("transmission failed. Retry #%d", pInfo->nRetry);
		pInfo->bcc = 0;
		FUNC3(pInfo, STX);
		FUNC1(pInfo);
		pInfo->state = R3964_TX_REQUEST;
		pInfo->nRetry++;
		FUNC2(&pInfo->tmr, jiffies + R3964_TO_QVZ);
	} else {
		FUNC0("transmission failed after %d retries",
			 R3964_MAX_RETRIES);

		FUNC4(pInfo, R3964_TX_FAIL);

		FUNC3(pInfo, NAK);
		FUNC1(pInfo);
		pInfo->state = R3964_IDLE;

		FUNC5(pInfo);
	}
}