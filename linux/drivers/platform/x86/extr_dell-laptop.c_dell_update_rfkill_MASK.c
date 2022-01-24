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
struct work_struct {int dummy; } ;
struct calling_interface_buffer {int* output; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLASS_INFO ; 
 int /*<<< orphan*/  SELECT_RFKILL ; 
 scalar_t__ bluetooth_rfkill ; 
 int /*<<< orphan*/  FUNC1 (struct calling_interface_buffer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int) ; 
 int FUNC4 (struct calling_interface_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ wifi_rfkill ; 
 scalar_t__ wwan_rfkill ; 

__attribute__((used)) static void FUNC5(struct work_struct *ignored)
{
	struct calling_interface_buffer buffer;
	int hwswitch = 0;
	int status;
	int ret;

	FUNC1(&buffer, 0, 0, 0, 0);
	ret = FUNC4(&buffer, CLASS_INFO, SELECT_RFKILL);
	status = buffer.output[1];

	if (ret != 0)
		return;

	FUNC1(&buffer, 0x2, 0, 0, 0);
	ret = FUNC4(&buffer, CLASS_INFO, SELECT_RFKILL);

	if (ret == 0 && (status & FUNC0(0)))
		hwswitch = buffer.output[1];

	if (wifi_rfkill) {
		FUNC2(wifi_rfkill, 1, status, hwswitch);
		FUNC3(wifi_rfkill, 1, status);
	}
	if (bluetooth_rfkill) {
		FUNC2(bluetooth_rfkill, 2, status,
					    hwswitch);
		FUNC3(bluetooth_rfkill, 2, status);
	}
	if (wwan_rfkill) {
		FUNC2(wwan_rfkill, 3, status, hwswitch);
		FUNC3(wwan_rfkill, 3, status);
	}
}