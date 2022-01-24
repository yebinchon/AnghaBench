#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct asus_wmi {int /*<<< orphan*/  platform_device; TYPE_1__* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC1 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC2 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC3 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC4 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC5 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC6 (struct asus_wmi*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct asus_wmi*) ; 
 struct asus_wmi* FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *device)
{
	struct asus_wmi *asus;

	asus = FUNC9(device);
	FUNC10(asus->driver->event_guid);
	FUNC1(asus);
	FUNC4(asus);
	FUNC5(asus);
	FUNC6(asus);
	FUNC3(asus);
	FUNC7(asus->platform_device);
	FUNC0(asus);
	FUNC2(asus);

	FUNC8(asus);
	return 0;
}