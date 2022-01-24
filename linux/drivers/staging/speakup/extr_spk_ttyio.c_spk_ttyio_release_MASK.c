#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* close ) (TYPE_2__*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 TYPE_2__* speakup_tty ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5(void)
{
	if (!speakup_tty)
		return;

	FUNC3(speakup_tty);

	if (speakup_tty->ops->close)
		speakup_tty->ops->close(speakup_tty, NULL);

	FUNC2(speakup_tty);
	FUNC4(speakup_tty);
	FUNC1(speakup_tty);
}