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
struct urb {int actual_length; int status; } ;
struct cxacru_timer {int /*<<< orphan*/  timer; struct urb* urb; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TIMEOUT ; 
 int /*<<< orphan*/  cxacru_timeout_kill ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct completion*) ; 

__attribute__((used)) static int FUNC6(struct urb *urb, struct completion *done,
				 int *actual_length)
{
	struct cxacru_timer timer = {
		.urb = urb,
	};

	FUNC4(&timer.timer, cxacru_timeout_kill, 0);
	FUNC2(&timer.timer, jiffies + FUNC3(CMD_TIMEOUT));
	FUNC5(done);
	FUNC0(&timer.timer);
	FUNC1(&timer.timer);

	if (actual_length)
		*actual_length = urb->actual_length;
	return urb->status; /* must read status after completion */
}