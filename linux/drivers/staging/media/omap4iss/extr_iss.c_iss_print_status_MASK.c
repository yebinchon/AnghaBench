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
 int /*<<< orphan*/  CLKCTRL ; 
 int /*<<< orphan*/  CLKSTAT ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  HL_REVISION ; 
 int /*<<< orphan*/  HL_SYSCONFIG ; 
 int /*<<< orphan*/  FUNC3 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct iss_device *iss)
{
	FUNC4(iss->dev, "-------------ISS HL Register dump-------------\n");

	FUNC3(iss, HL_REVISION);
	FUNC3(iss, HL_SYSCONFIG);
	FUNC3(iss, FUNC2(5));
	FUNC3(iss, FUNC1(5));
	FUNC3(iss, FUNC0(5));
	FUNC3(iss, CTRL);
	FUNC3(iss, CLKCTRL);
	FUNC3(iss, CLKSTAT);

	FUNC4(iss->dev, "-----------------------------------------------\n");
}