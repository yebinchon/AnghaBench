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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int,int) ; 
 scalar_t__ MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT ; 
 scalar_t__ MIPI_DSI_RX_DCS_LONG_READ_RESPONSE ; 
 scalar_t__ MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE ; 
 scalar_t__ MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE ; 
 scalar_t__ FUNC4 (struct platform_device*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*,int) ; 

__attribute__((used)) static u16 FUNC8(struct platform_device *dsidev,
		int channel)
{
	/* RX_FIFO_NOT_EMPTY */
	while (FUNC4(dsidev, FUNC0(channel), 20, 20)) {
		u32 val;
		u8 dt;
		val = FUNC5(dsidev, FUNC1(channel));
		FUNC2("\trawval %#08x\n", val);
		dt = FUNC3(val, 5, 0);
		if (dt == MIPI_DSI_RX_ACKNOWLEDGE_AND_ERROR_REPORT) {
			u16 err = FUNC3(val, 23, 8);
			FUNC6(err);
		} else if (dt == MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_1BYTE) {
			FUNC2("\tDCS short response, 1 byte: %#x\n",
					FUNC3(val, 23, 8));
		} else if (dt == MIPI_DSI_RX_DCS_SHORT_READ_RESPONSE_2BYTE) {
			FUNC2("\tDCS short response, 2 byte: %#x\n",
					FUNC3(val, 23, 8));
		} else if (dt == MIPI_DSI_RX_DCS_LONG_READ_RESPONSE) {
			FUNC2("\tDCS long response, len %d\n",
					FUNC3(val, 23, 8));
			FUNC7(dsidev, channel);
		} else {
			FUNC2("\tunknown datatype 0x%02x\n", dt);
		}
	}
	return 0;
}