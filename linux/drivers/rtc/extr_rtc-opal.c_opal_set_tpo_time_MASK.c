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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtc_wkalrm {int /*<<< orphan*/  time; scalar_t__ enabled; } ;
struct opal_msg {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ERESTARTSYS ; 
 int OPAL_ASYNC_COMPLETION ; 
 int OPAL_SUCCESS ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,struct opal_msg*) ; 
 int FUNC3 (struct opal_msg) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct rtc_wkalrm *alarm)
{
	u64 h_m_s_ms = 0;
	struct opal_msg msg;
	u32 y_m_d = 0;
	int token, rc;

	/* if alarm is enabled */
	if (alarm->enabled) {
		FUNC7(&alarm->time, &y_m_d, &h_m_s_ms);
		FUNC5("Alarm set to %x %llx\n", y_m_d, h_m_s_ms);

	} else {
		FUNC5("Alarm getting disabled\n");
	}

	token = FUNC0();
	if (token < 0) {
		if (token != -ERESTARTSYS)
			FUNC6("Failed to get the async token\n");

		return token;
	}

	/* TPO, we care about hour and minute */
	rc = FUNC4(token, y_m_d,
			    (u32)((h_m_s_ms >> 32) & 0xffff0000));
	if (rc != OPAL_ASYNC_COMPLETION) {
		rc = -EIO;
		goto exit;
	}

	rc = FUNC2(token, &msg);
	if (rc) {
		rc = -EIO;
		goto exit;
	}

	rc = FUNC3(msg);
	if (rc != OPAL_SUCCESS)
		rc = -EIO;

exit:
	FUNC1(token);
	return rc;
}