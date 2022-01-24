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
struct seq_file {int dummy; } ;
struct calling_interface_buffer {int* output; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CLASS_INFO ; 
 int /*<<< orphan*/  SELECT_RFKILL ; 
 int /*<<< orphan*/  FUNC1 (struct calling_interface_buffer*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct calling_interface_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *data)
{
	struct calling_interface_buffer buffer;
	int hwswitch_state;
	int hwswitch_ret;
	int status;
	int ret;

	FUNC1(&buffer, 0, 0, 0, 0);
	ret = FUNC2(&buffer, CLASS_INFO, SELECT_RFKILL);
	if (ret)
		return ret;
	status = buffer.output[1];

	FUNC1(&buffer, 0x2, 0, 0, 0);
	hwswitch_ret = FUNC2(&buffer, CLASS_INFO, SELECT_RFKILL);
	if (hwswitch_ret)
		return hwswitch_ret;
	hwswitch_state = buffer.output[1];

	FUNC3(s, "return:\t%d\n", ret);
	FUNC3(s, "status:\t0x%X\n", status);
	FUNC3(s, "Bit 0 : Hardware switch supported:   %lu\n",
		   status & FUNC0(0));
	FUNC3(s, "Bit 1 : Wifi locator supported:      %lu\n",
		  (status & FUNC0(1)) >> 1);
	FUNC3(s, "Bit 2 : Wifi is supported:           %lu\n",
		  (status & FUNC0(2)) >> 2);
	FUNC3(s, "Bit 3 : Bluetooth is supported:      %lu\n",
		  (status & FUNC0(3)) >> 3);
	FUNC3(s, "Bit 4 : WWAN is supported:           %lu\n",
		  (status & FUNC0(4)) >> 4);
	FUNC3(s, "Bit 5 : Wireless keyboard supported: %lu\n",
		  (status & FUNC0(5)) >> 5);
	FUNC3(s, "Bit 6 : UWB supported:               %lu\n",
		  (status & FUNC0(6)) >> 6);
	FUNC3(s, "Bit 7 : WiGig supported:             %lu\n",
		  (status & FUNC0(7)) >> 7);
	FUNC3(s, "Bit 8 : Wifi is installed:           %lu\n",
		  (status & FUNC0(8)) >> 8);
	FUNC3(s, "Bit 9 : Bluetooth is installed:      %lu\n",
		  (status & FUNC0(9)) >> 9);
	FUNC3(s, "Bit 10: WWAN is installed:           %lu\n",
		  (status & FUNC0(10)) >> 10);
	FUNC3(s, "Bit 11: UWB installed:               %lu\n",
		  (status & FUNC0(11)) >> 11);
	FUNC3(s, "Bit 12: WiGig installed:             %lu\n",
		  (status & FUNC0(12)) >> 12);

	FUNC3(s, "Bit 16: Hardware switch is on:       %lu\n",
		  (status & FUNC0(16)) >> 16);
	FUNC3(s, "Bit 17: Wifi is blocked:             %lu\n",
		  (status & FUNC0(17)) >> 17);
	FUNC3(s, "Bit 18: Bluetooth is blocked:        %lu\n",
		  (status & FUNC0(18)) >> 18);
	FUNC3(s, "Bit 19: WWAN is blocked:             %lu\n",
		  (status & FUNC0(19)) >> 19);
	FUNC3(s, "Bit 20: UWB is blocked:              %lu\n",
		  (status & FUNC0(20)) >> 20);
	FUNC3(s, "Bit 21: WiGig is blocked:            %lu\n",
		  (status & FUNC0(21)) >> 21);

	FUNC3(s, "\nhwswitch_return:\t%d\n", hwswitch_ret);
	FUNC3(s, "hwswitch_state:\t0x%X\n", hwswitch_state);
	FUNC3(s, "Bit 0 : Wifi controlled by switch:      %lu\n",
		   hwswitch_state & FUNC0(0));
	FUNC3(s, "Bit 1 : Bluetooth controlled by switch: %lu\n",
		   (hwswitch_state & FUNC0(1)) >> 1);
	FUNC3(s, "Bit 2 : WWAN controlled by switch:      %lu\n",
		   (hwswitch_state & FUNC0(2)) >> 2);
	FUNC3(s, "Bit 3 : UWB controlled by switch:       %lu\n",
		   (hwswitch_state & FUNC0(3)) >> 3);
	FUNC3(s, "Bit 4 : WiGig controlled by switch:     %lu\n",
		   (hwswitch_state & FUNC0(4)) >> 4);
	FUNC3(s, "Bit 7 : Wireless switch config locked:  %lu\n",
		   (hwswitch_state & FUNC0(7)) >> 7);
	FUNC3(s, "Bit 8 : Wifi locator enabled:           %lu\n",
		   (hwswitch_state & FUNC0(8)) >> 8);
	FUNC3(s, "Bit 15: Wifi locator setting locked:    %lu\n",
		   (hwswitch_state & FUNC0(15)) >> 15);

	return 0;
}