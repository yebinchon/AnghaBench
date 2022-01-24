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
struct zilog_channel {int /*<<< orphan*/  control; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 unsigned char CRC_ERR ; 
 int /*<<< orphan*/  ERR_RES ; 
 unsigned char PAR_ERR ; 
 int /*<<< orphan*/  R1 ; 
 unsigned char Rx_CH_AV ; 
 unsigned char Rx_OVR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct zilog_channel*) ; 
 unsigned char FUNC2 (struct zilog_channel*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct zilog_channel *channel)
{
	int i;

	for (i = 0; i < 32; i++) {
		unsigned char regval;

		regval = FUNC3(&channel->control);
		FUNC0();
		if (regval & Rx_CH_AV)
			break;

		regval = FUNC2(channel, R1);
		FUNC3(&channel->data);
		FUNC0();

		if (regval & (PAR_ERR | Rx_OVR | CRC_ERR)) {
			FUNC4(ERR_RES, &channel->control);
			FUNC0();
			FUNC1(channel);
		}
	}
}