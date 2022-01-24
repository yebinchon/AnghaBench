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
typedef  int /*<<< orphan*/  u16 ;
struct gserial {int dummy; } ;
struct f_acm {int /*<<< orphan*/  serial_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACM_CTRL_BRK ; 
 int FUNC0 (struct f_acm*) ; 
 struct f_acm* FUNC1 (struct gserial*) ; 

__attribute__((used)) static int FUNC2(struct gserial *port, int duration)
{
	struct f_acm		*acm = FUNC1(port);
	u16			state;

	state = acm->serial_state;
	state &= ~ACM_CTRL_BRK;
	if (duration)
		state |= ACM_CTRL_BRK;

	acm->serial_state = state;
	return FUNC0(acm);
}