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

/* Variables and functions */
 int EIO ; 
 scalar_t__ OPAL_BUSY ; 
 int OPAL_BUSY_DELAY_MS ; 
 scalar_t__ OPAL_BUSY_EVENT ; 
 scalar_t__ OPAL_HARDWARE ; 
 scalar_t__ OPAL_INTERNAL_ERROR ; 
 scalar_t__ OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rtc_time*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct rtc_time *tm)
{
	s64 rc = OPAL_BUSY;
	int retries = 10;
	u32 y_m_d = 0;
	u64 h_m_s_ms = 0;

	FUNC3(tm, &y_m_d, &h_m_s_ms);

	while (rc == OPAL_BUSY || rc == OPAL_BUSY_EVENT) {
		rc = FUNC2(y_m_d, h_m_s_ms);
		if (rc == OPAL_BUSY_EVENT) {
			FUNC0(OPAL_BUSY_DELAY_MS);
			FUNC1(NULL);
		} else if (rc == OPAL_BUSY) {
			FUNC0(OPAL_BUSY_DELAY_MS);
		} else if (rc == OPAL_HARDWARE || rc == OPAL_INTERNAL_ERROR) {
			if (retries--) {
				FUNC0(10); /* Wait 10ms before retry */
				rc = OPAL_BUSY; /* go around again */
			}
		}
	}

	return rc == OPAL_SUCCESS ? 0 : -EIO;
}