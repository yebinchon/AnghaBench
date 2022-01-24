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
struct tty_struct {int /*<<< orphan*/  flow_stopped; scalar_t__ stopped; } ;

/* Variables and functions */
 unsigned char FUNC0 (struct tty_struct*) ; 
 scalar_t__ FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 scalar_t__ FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 unsigned char FUNC6 (struct tty_struct*) ; 
 unsigned char FUNC7 (struct tty_struct*) ; 
 unsigned char FUNC8 (struct tty_struct*) ; 
 unsigned char FUNC9 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct tty_struct*) ; 
 unsigned char FUNC13 (unsigned char) ; 

__attribute__((used)) static void FUNC14(struct tty_struct *tty, unsigned char c)
{
	if (FUNC1(tty))
		c &= 0x7f;
	if (FUNC2(tty) && FUNC5(tty))
		c = FUNC13(c);

	if (FUNC4(tty)) {
		if (c == FUNC8(tty))
			FUNC12(tty);
		else if (c == FUNC7(tty) ||
			 (tty->stopped && !tty->flow_stopped && FUNC3(tty) &&
			  c != FUNC0(tty) && c != FUNC6(tty) &&
			  c != FUNC9(tty))) {
			FUNC11(tty);
			FUNC10(tty);
		}
	}
}