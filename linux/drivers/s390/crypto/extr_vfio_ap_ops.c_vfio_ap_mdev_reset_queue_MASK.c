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
struct ap_queue_status {int response_code; int /*<<< orphan*/  queue_empty; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int) ; 
#define  AP_RESPONSE_BUSY 130 
#define  AP_RESPONSE_NORMAL 129 
#define  AP_RESPONSE_RESET_IN_PROGRESS 128 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ap_queue_status FUNC2 (int,int /*<<< orphan*/ *) ; 
 struct ap_queue_status FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(unsigned int apid, unsigned int apqi,
			     unsigned int retry)
{
	struct ap_queue_status status;
	int retry2 = 2;
	int apqn = FUNC0(apid, apqi);

	do {
		status = FUNC3(apqn);
		switch (status.response_code) {
		case AP_RESPONSE_NORMAL:
			while (!status.queue_empty && retry2--) {
				FUNC4(20);
				status = FUNC2(apqn, NULL);
			}
			FUNC1(retry2 <= 0);
			return 0;
		case AP_RESPONSE_RESET_IN_PROGRESS:
		case AP_RESPONSE_BUSY:
			FUNC4(20);
			break;
		default:
			/* things are really broken, give up */
			return -EIO;
		}
	} while (retry--);

	return -EBUSY;
}