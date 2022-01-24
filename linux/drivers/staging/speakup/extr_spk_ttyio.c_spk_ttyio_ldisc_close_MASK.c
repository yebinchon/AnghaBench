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
struct tty_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  disc_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* speakup_tty ; 
 int /*<<< orphan*/  speakup_tty_mutex ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	FUNC1(&speakup_tty_mutex);
	FUNC0(speakup_tty->disc_data);
	speakup_tty = NULL;
	FUNC2(&speakup_tty_mutex);
}