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
struct sony_laptop_keypress {int /*<<< orphan*/  dev; int /*<<< orphan*/  key; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  kp ;
struct TYPE_2__ {int /*<<< orphan*/  fifo; int /*<<< orphan*/ * jog_dev; int /*<<< orphan*/ * key_dev; int /*<<< orphan*/  release_key_timer; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 TYPE_1__ sony_laptop_input ; 

__attribute__((used)) static void FUNC7(void)
{
	struct sony_laptop_keypress kp = { NULL };

	/* Cleanup only after the last user has gone */
	if (!FUNC0(&sony_laptop_input.users))
		return;

	FUNC1(&sony_laptop_input.release_key_timer);

	/*
	 * Generate key-up events for remaining keys. Note that we don't
	 * need locking since nobody is adding new events to the kfifo.
	 */
	while (FUNC6(&sony_laptop_input.fifo,
			 (unsigned char *)&kp, sizeof(kp)) == sizeof(kp)) {
		FUNC2(kp.dev, kp.key, 0);
		FUNC3(kp.dev);
	}

	/* destroy input devs */
	FUNC4(sony_laptop_input.key_dev);
	sony_laptop_input.key_dev = NULL;

	if (sony_laptop_input.jog_dev) {
		FUNC4(sony_laptop_input.jog_dev);
		sony_laptop_input.jog_dev = NULL;
	}

	FUNC5(&sony_laptop_input.fifo);
}