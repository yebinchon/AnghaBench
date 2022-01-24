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
struct tty_struct {struct n_tty_data* disc_data; } ;
struct n_tty_data {scalar_t__ num_overrun; scalar_t__ overrun_time; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct tty_struct*,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	struct n_tty_data *ldata = tty->disc_data;

	ldata->num_overrun++;
	if (FUNC0(jiffies, ldata->overrun_time + HZ) ||
			FUNC0(ldata->overrun_time, jiffies)) {
		FUNC1(tty, "%d input overrun(s)\n", ldata->num_overrun);
		ldata->overrun_time = jiffies;
		ldata->num_overrun = 0;
	}
}