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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ds1685_priv {int (* read ) (struct ds1685_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* post_ram_clear ) () ;int /*<<< orphan*/  (* write ) (struct ds1685_priv*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* wake_alarm ) () ;int /*<<< orphan*/  (* prepare_poweroff ) () ;} ;

/* Variables and functions */
 int RTC_CTRL_4A_KF ; 
 int RTC_CTRL_4A_RF ; 
 int RTC_CTRL_4A_WF ; 
 int RTC_CTRL_4B_KSE ; 
 int RTC_CTRL_4B_RIE ; 
 int RTC_CTRL_4B_WIE ; 
 int /*<<< orphan*/  RTC_EXT_CTRL_4A ; 
 int /*<<< orphan*/  RTC_EXT_CTRL_4B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ds1685_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ds1685_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct ds1685_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct ds1685_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC17(struct ds1685_priv *rtc, struct platform_device *pdev)
{
	u8 ctrl4a, ctrl4b;

	FUNC3(rtc);
	ctrl4a = rtc->read(rtc, RTC_EXT_CTRL_4A);
	ctrl4b = rtc->read(rtc, RTC_EXT_CTRL_4B);

	/*
	 * Check for a kickstart interrupt. With Vcc applied, this
	 * typically means that the power button was pressed, so we
	 * begin the shutdown sequence.
	 */
	if ((ctrl4b & RTC_CTRL_4B_KSE) && (ctrl4a & RTC_CTRL_4A_KF)) {
		/* Briefly disable kickstarts to debounce button presses. */
		rtc->write(rtc, RTC_EXT_CTRL_4B,
			   (rtc->read(rtc, RTC_EXT_CTRL_4B) &
			    ~(RTC_CTRL_4B_KSE)));

		/* Clear the kickstart flag. */
		rtc->write(rtc, RTC_EXT_CTRL_4A,
			   (ctrl4a & ~(RTC_CTRL_4A_KF)));


		/*
		 * Sleep 500ms before re-enabling kickstarts.  This allows
		 * adequate time to avoid reading signal jitter as additional
		 * button presses.
		 */
		FUNC4(500);
		rtc->write(rtc, RTC_EXT_CTRL_4B,
			   (rtc->read(rtc, RTC_EXT_CTRL_4B) |
			    RTC_CTRL_4B_KSE));

		/* Call the platform pre-poweroff function. Else, shutdown. */
		if (rtc->prepare_poweroff != NULL)
			rtc->prepare_poweroff();
		else
			FUNC1(pdev);
	}

	/*
	 * Check for a wake-up interrupt.  With Vcc applied, this is
	 * essentially a second alarm interrupt, except it takes into
	 * account the 'date' register in bank1 in addition to the
	 * standard three alarm registers.
	 */
	if ((ctrl4b & RTC_CTRL_4B_WIE) && (ctrl4a & RTC_CTRL_4A_WF)) {
		rtc->write(rtc, RTC_EXT_CTRL_4A,
			   (ctrl4a & ~(RTC_CTRL_4A_WF)));

		/* Call the platform wake_alarm function if defined. */
		if (rtc->wake_alarm != NULL)
			rtc->wake_alarm();
		else
			FUNC0(&pdev->dev,
				 "Wake Alarm IRQ just occurred!\n");
	}

	/*
	 * Check for a ram-clear interrupt.  This happens if RIE=1 and RF=0
	 * when RCE=1 in 4B.  This clears all NVRAM bytes in bank0 by setting
	 * each byte to a logic 1.  This has no effect on any extended
	 * NV-SRAM that might be present, nor on the time/calendar/alarm
	 * registers.  After a ram-clear is completed, there is a minimum
	 * recovery time of ~150ms in which all reads/writes are locked out.
	 * NOTE: A ram-clear can still occur if RCE=1 and RIE=0.  We cannot
	 * catch this scenario.
	 */
	if ((ctrl4b & RTC_CTRL_4B_RIE) && (ctrl4a & RTC_CTRL_4A_RF)) {
		rtc->write(rtc, RTC_EXT_CTRL_4A,
			   (ctrl4a & ~(RTC_CTRL_4A_RF)));
		FUNC4(150);

		/* Call the platform post_ram_clear function if defined. */
		if (rtc->post_ram_clear != NULL)
			rtc->post_ram_clear();
		else
			FUNC0(&pdev->dev,
				 "RAM-Clear IRQ just occurred!\n");
	}
	FUNC2(rtc);
}