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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ s64 ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ OPAL_BUSY ; 
 int OPAL_BUSY_DELAY_MS ; 
 scalar_t__ OPAL_BUSY_EVENT ; 
 scalar_t__ OPAL_HARDWARE ; 
 scalar_t__ OPAL_INTERNAL_ERROR ; 
 scalar_t__ OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rtc_time*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct rtc_time *tm)
{
	s64 rc = OPAL_BUSY;
	int retries = 10;
	u32 y_m_d;
	u64 h_m_s_ms;
	__be32 __y_m_d;
	__be64 __h_m_s_ms;

	while (rc == OPAL_BUSY || rc == OPAL_BUSY_EVENT) {
		rc = FUNC4(&__y_m_d, &__h_m_s_ms);
		if (rc == OPAL_BUSY_EVENT) {
			FUNC2(OPAL_BUSY_DELAY_MS);
			FUNC3(NULL);
		} else if (rc == OPAL_BUSY) {
			FUNC2(OPAL_BUSY_DELAY_MS);
		} else if (rc == OPAL_HARDWARE || rc == OPAL_INTERNAL_ERROR) {
			if (retries--) {
				FUNC2(10); /* Wait 10ms before retry */
				rc = OPAL_BUSY; /* go around again */
			}
		}
	}

	if (rc != OPAL_SUCCESS)
		return -EIO;

	y_m_d = FUNC0(__y_m_d);
	h_m_s_ms = FUNC1(__h_m_s_ms);
	FUNC5(y_m_d, h_m_s_ms, tm);

	return 0;
}