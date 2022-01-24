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
typedef  int /*<<< orphan*/  u8 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROG_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (struct controller*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct slot *slot, u8 *prog_int)
{
	struct controller *ctrl = slot->ctrl;

	*prog_int = FUNC0(ctrl, PROG_INTERFACE);

	return 0;
}