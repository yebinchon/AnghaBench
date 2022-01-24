#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wilco_ec_device {TYPE_1__* io_command; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int EC_CMDR_BUSY ; 
 int EC_CMDR_PENDING ; 
 unsigned long EC_MAILBOX_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static bool FUNC3(struct wilco_ec_device *ec)
{
	unsigned long timeout = jiffies + EC_MAILBOX_TIMEOUT;

	do {
		if (!(FUNC0(ec->io_command->start) &
		      (EC_CMDR_PENDING | EC_CMDR_BUSY)))
			return false;
		FUNC2(100, 200);
	} while (FUNC1(jiffies, timeout));

	return true;
}