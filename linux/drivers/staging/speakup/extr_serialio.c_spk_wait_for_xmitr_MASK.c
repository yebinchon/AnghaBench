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
struct spk_synth {int /*<<< orphan*/  long_name; scalar_t__ alive; } ;
struct TYPE_2__ {scalar_t__ port_tts; } ;

/* Variables and functions */
 scalar_t__ NUM_DISABLE_TIMEOUTS ; 
 int SPK_CTS_TIMEOUT ; 
 int SPK_XMITR_TIMEOUT ; 
 scalar_t__ UART_MSR ; 
 int UART_MSR_CTS ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ speakup_info ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ timeouts ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct spk_synth *in_synth)
{
	int tmout = SPK_XMITR_TIMEOUT;

	if ((in_synth->alive) && (timeouts >= NUM_DISABLE_TIMEOUTS)) {
		FUNC1("%s: too many timeouts, deactivating speakup\n",
			in_synth->long_name);
		in_synth->alive = 0;
		/* No synth any more, so nobody will restart TTYs, and we thus
		 * need to do it ourselves.  Now that there is no synth we can
		 * let application flood anyway
		 */
		FUNC2();
		timeouts = 0;
		return 0;
	}
	while (FUNC3()) {
		if (--tmout == 0) {
			FUNC1("%s: timed out (tx busy)\n",
				in_synth->long_name);
			timeouts++;
			return 0;
		}
		FUNC4(1);
	}
	tmout = SPK_CTS_TIMEOUT;
	while (!((FUNC0(speakup_info.port_tts + UART_MSR)) & UART_MSR_CTS)) {
		/* CTS */
		if (--tmout == 0) {
			timeouts++;
			return 0;
		}
		FUNC4(1);
	}
	timeouts = 0;
	return 1;
}