#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ascebc; } ;
struct tty3270 {scalar_t__ nr_up; int /*<<< orphan*/  update_flags; TYPE_2__* status; TYPE_1__ view; } ;
struct TYPE_4__ {scalar_t__ string; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_UPDATE_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*,int) ; 

__attribute__((used)) static void
FUNC2(struct tty3270 * tp)
{
	char *str;

	str = (tp->nr_up != 0) ? "History" : "Running";
	FUNC1(tp->status->string + 8, str, 7);
	FUNC0(tp->view.ascebc, tp->status->string + 8, 7);
	tp->update_flags |= TTY_UPDATE_STATUS;
}