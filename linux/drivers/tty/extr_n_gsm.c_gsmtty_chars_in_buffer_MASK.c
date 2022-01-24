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
struct tty_struct {struct gsm_dlci* driver_data; } ;
struct gsm_dlci {scalar_t__ state; int /*<<< orphan*/  fifo; } ;

/* Variables and functions */
 scalar_t__ DLCI_CLOSED ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct tty_struct *tty)
{
	struct gsm_dlci *dlci = tty->driver_data;
	if (dlci->state == DLCI_CLOSED)
		return -EINVAL;
	return FUNC0(dlci->fifo);
}