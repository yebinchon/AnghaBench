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
struct spk_ldisc_data {char buf; int buf_free; int /*<<< orphan*/  completion; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; struct spk_ldisc_data* disc_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__* speakup_tty ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char FUNC5(int timeout)
{
	struct spk_ldisc_data *ldisc_data = speakup_tty->disc_data;
	char rv;

	if (FUNC4(&ldisc_data->completion,
					FUNC3(timeout)) == 0) {
		if (timeout)
			FUNC1("spk_ttyio: timeout (%d)  while waiting for input\n",
				timeout);
		return 0xff;
	}

	rv = ldisc_data->buf;
	/* Make sure we have read buf before we set buf_free to let
	 * the producer overwrite it
	 */
	FUNC0();
	ldisc_data->buf_free = true;
	/* Let TTY push more characters */
	FUNC2(speakup_tty->port);

	return rv;
}