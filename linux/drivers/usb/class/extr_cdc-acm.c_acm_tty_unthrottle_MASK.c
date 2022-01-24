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
struct acm {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACM_THROTTLED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct tty_struct *tty)
{
	struct acm *acm = tty->driver_data;

	FUNC1(ACM_THROTTLED, &acm->flags);

	/* Matches the smp_mb__after_atomic() in acm_read_bulk_callback(). */
	FUNC2();

	FUNC0(acm, GFP_KERNEL);
}