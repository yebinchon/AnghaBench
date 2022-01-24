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
struct TYPE_2__ {scalar_t__ port_tts; } ;

/* Variables and functions */
 int SPK_SERIAL_TIMEOUT ; 
 scalar_t__ UART_LSR ; 
 unsigned char UART_LSR_DR ; 
 scalar_t__ UART_RX ; 
 unsigned char FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static unsigned char FUNC3(void)
{
	int tmout = SPK_SERIAL_TIMEOUT;

	while (!(FUNC0(speakup_info.port_tts + UART_LSR) & UART_LSR_DR)) {
		if (--tmout == 0) {
			FUNC1("time out while waiting for input.\n");
			return 0xff;
		}
		FUNC2(1);
	}
	return FUNC0(speakup_info.port_tts + UART_RX);
}