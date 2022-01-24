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
struct tty_struct {struct acm* driver_data; } ;
struct acm {int writesize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct acm*) ; 

__attribute__((used)) static int FUNC1(struct tty_struct *tty)
{
	struct acm *acm = tty->driver_data;
	/*
	 * Do not let the line discipline to know that we have a reserve,
	 * or it might get too enthusiastic.
	 */
	return FUNC0(acm) ? acm->writesize : 0;
}