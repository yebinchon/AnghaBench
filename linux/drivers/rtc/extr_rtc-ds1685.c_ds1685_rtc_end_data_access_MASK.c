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
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write ) (struct ds1685_priv*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RTC_CTRL_B ; 
 int RTC_CTRL_B_SET ; 
 int /*<<< orphan*/  FUNC0 (struct ds1685_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC3(struct ds1685_priv *rtc)
{
	/* Switch back to Bank 0 */
	FUNC0(rtc);

	/* Clear the SET bit in Ctrl B */
	rtc->write(rtc, RTC_CTRL_B,
		   (rtc->read(rtc, RTC_CTRL_B) & ~(RTC_CTRL_B_SET)));
}