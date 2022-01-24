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
struct notifier_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 scalar_t__ KEY_CAPSLOCK ; 
 int NOTIFY_DONE ; 
 int NOTIFY_STOP ; 
 int NVEC_3BYTES ; 
 unsigned long NVEC_KB_EVT ; 
 int NVEC_VAR_SIZE ; 
 scalar_t__** code_tabs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ keys_dev ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct notifier_block *nb,
			      unsigned long event_type, void *data)
{
	int code, state;
	unsigned char *msg = data;

	if (event_type == NVEC_KB_EVT) {
		int _size = (msg[0] & (3 << 5)) >> 5;

/* power on/off button */
		if (_size == NVEC_VAR_SIZE)
			return NOTIFY_STOP;

		if (_size == NVEC_3BYTES)
			msg++;

		code = msg[1] & 0x7f;
		state = msg[1] & 0x80;

		if (code_tabs[_size][code] == KEY_CAPSLOCK && state)
			FUNC2();

		FUNC0(keys_dev.input, code_tabs[_size][code],
				 !state);
		FUNC1(keys_dev.input);

		return NOTIFY_STOP;
	}

	return NOTIFY_DONE;
}