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
struct n_tty_data {int dummy; } ;

/* Variables and functions */
 unsigned char ECHO_OP_START ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,struct n_tty_data*) ; 

__attribute__((used)) static void FUNC1(unsigned char c, struct n_tty_data *ldata)
{
	if (c == ECHO_OP_START) {
		FUNC0(ECHO_OP_START, ldata);
		FUNC0(ECHO_OP_START, ldata);
	} else {
		FUNC0(c, ldata);
	}
}