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
struct tty_struct {scalar_t__ driver_data; } ;
struct raw3215_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct raw3215_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	struct raw3215_info *raw;

	raw = (struct raw3215_info *) tty->driver_data;
	FUNC0(raw);
	FUNC1(tty);
}