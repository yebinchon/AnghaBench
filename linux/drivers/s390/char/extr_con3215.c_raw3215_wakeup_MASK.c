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
struct tty_struct {int dummy; } ;
struct raw3215_info {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 struct tty_struct* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct raw3215_info *raw = (struct raw3215_info *) data;
	struct tty_struct *tty;

	tty = FUNC1(&raw->port);
	if (tty) {
		FUNC2(tty);
		FUNC0(tty);
	}
}