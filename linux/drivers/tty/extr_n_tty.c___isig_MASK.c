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
struct pid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pid*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pid*) ; 
 struct pid* FUNC2 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC3(int sig, struct tty_struct *tty)
{
	struct pid *tty_pgrp = FUNC2(tty);
	if (tty_pgrp) {
		FUNC0(tty_pgrp, sig, 1);
		FUNC1(tty_pgrp);
	}
}