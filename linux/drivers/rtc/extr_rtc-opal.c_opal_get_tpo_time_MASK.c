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
typedef  scalar_t__ u32 ;
struct rtc_wkalrm {int /*<<< orphan*/  time; } ;
struct opal_msg {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 int ENOENT ; 
 int ERESTARTSYS ; 
 int OPAL_ASYNC_COMPLETION ; 
 int OPAL_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,struct opal_msg*) ; 
 int FUNC4 (struct opal_msg) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct rtc_wkalrm *alarm)
{
	__be32 __y_m_d, __h_m;
	struct opal_msg msg;
	int rc, token;
	u64 h_m_s_ms;
	u32 y_m_d;

	token = FUNC1();
	if (token < 0) {
		if (token != -ERESTARTSYS)
			FUNC8("Failed to get the async token\n");

		return token;
	}

	rc = FUNC6(token, &__y_m_d, &__h_m);
	if (rc != OPAL_ASYNC_COMPLETION) {
		rc = -EIO;
		goto exit;
	}

	rc = FUNC3(token, &msg);
	if (rc) {
		rc = -EIO;
		goto exit;
	}

	rc = FUNC4(msg);
	if (rc != OPAL_SUCCESS) {
		rc = -EIO;
		goto exit;
	}

	y_m_d = FUNC0(__y_m_d);
	h_m_s_ms = ((u64)FUNC0(__h_m) << 32);

	/* check if no alarm is set */
	if (y_m_d == 0 && h_m_s_ms == 0) {
		FUNC7("No alarm is set\n");
		rc = -ENOENT;
		goto exit;
	} else {
		FUNC7("Alarm set to %x %llx\n", y_m_d, h_m_s_ms);
	}

	FUNC5(y_m_d, h_m_s_ms, &alarm->time);

exit:
	FUNC2(token);
	return rc;
}