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
struct iss_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  ISP5_CTRL ; 
 int ISP5_CTRL_MSTANDBY ; 
 int ISP5_CTRL_MSTANDBY_WAIT ; 
 int /*<<< orphan*/  ISP5_SYSCONFIG ; 
 int ISP5_SYSCONFIG_SOFTRESET ; 
 int /*<<< orphan*/  ISP5_SYSCONFIG_STANDBYMODE_MASK ; 
 int /*<<< orphan*/  ISP5_SYSCONFIG_STANDBYMODE_SMART ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_ISP_SYS1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (int,int,int,int) ; 
 int FUNC2 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iss_device *iss)
{
	unsigned int timeout;

	/* Fist, ensure that the ISP is IDLE (no transactions happening) */
	FUNC4(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
		       ISP5_SYSCONFIG_STANDBYMODE_MASK,
		       ISP5_SYSCONFIG_STANDBYMODE_SMART);

	FUNC3(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL, ISP5_CTRL_MSTANDBY);

	timeout = FUNC1(
		FUNC2(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_CTRL) &
		ISP5_CTRL_MSTANDBY_WAIT, 1000000, 1000, 1500);
	if (timeout) {
		FUNC0(iss->dev, "ISP5 standby timeout\n");
		return -ETIMEDOUT;
	}

	/* Now finally, do the reset */
	FUNC3(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG,
		    ISP5_SYSCONFIG_SOFTRESET);

	timeout = FUNC1(
		!(FUNC2(iss, OMAP4_ISS_MEM_ISP_SYS1, ISP5_SYSCONFIG) &
		ISP5_SYSCONFIG_SOFTRESET), 1000000, 1000, 1500);
	if (timeout) {
		FUNC0(iss->dev, "ISP5 reset timeout\n");
		return -ETIMEDOUT;
	}

	return 0;
}