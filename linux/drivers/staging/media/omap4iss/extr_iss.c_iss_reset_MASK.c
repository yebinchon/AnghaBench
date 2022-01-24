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
struct iss_device {int /*<<< orphan*/  crashed; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  ISS_HL_SYSCONFIG ; 
 int ISS_HL_SYSCONFIG_SOFTRESET ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_TOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC1 (int,int,int,int) ; 
 int FUNC2 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iss_device *iss)
{
	unsigned int timeout;

	FUNC3(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG,
		    ISS_HL_SYSCONFIG_SOFTRESET);

	timeout = FUNC1(
		!(FUNC2(iss, OMAP4_ISS_MEM_TOP, ISS_HL_SYSCONFIG) &
		ISS_HL_SYSCONFIG_SOFTRESET), 1000, 10, 100);
	if (timeout) {
		FUNC0(iss->dev, "ISS reset timeout\n");
		return -ETIMEDOUT;
	}

	FUNC4(&iss->crashed);

	return 0;
}