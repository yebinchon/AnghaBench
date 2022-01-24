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
struct timer_list {int dummy; } ;
struct sony_laptop_keypress {int /*<<< orphan*/  dev; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  kp ;
struct TYPE_2__ {int /*<<< orphan*/  fifo_lock; int /*<<< orphan*/  release_key_timer; int /*<<< orphan*/  fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 TYPE_1__ sony_laptop_input ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct timer_list *unused)
{
	struct sony_laptop_keypress kp;
	unsigned long flags;

	FUNC6(&sony_laptop_input.fifo_lock, flags);

	if (FUNC3(&sony_laptop_input.fifo,
		      (unsigned char *)&kp, sizeof(kp)) == sizeof(kp)) {
		FUNC0(kp.dev, kp.key, 0);
		FUNC1(kp.dev);
	}

	/* If there is something in the fifo schedule next release. */
	if (FUNC2(&sony_laptop_input.fifo) != 0)
		FUNC4(&sony_laptop_input.release_key_timer,
			  jiffies + FUNC5(10));

	FUNC7(&sony_laptop_input.fifo_lock, flags);
}