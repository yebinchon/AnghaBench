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
struct tty_struct {int index; } ;
struct nozomi {int /*<<< orphan*/  spin_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MAX_PORT ; 
 int /*<<< orphan*/  FUNC1 (int,struct nozomi*) ; 
 struct nozomi* FUNC2 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	struct nozomi *dc = FUNC2(tty);
	unsigned long flags;

	FUNC0("UNTHROTTLE");
	FUNC4(&dc->spin_mutex, flags);
	FUNC1(tty->index % MAX_PORT, dc);
	FUNC3(tty, 1);

	FUNC5(&dc->spin_mutex, flags);
}