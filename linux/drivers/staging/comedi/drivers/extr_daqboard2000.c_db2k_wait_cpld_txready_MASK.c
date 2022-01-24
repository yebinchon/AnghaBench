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
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 int DB2K_CPLD_STATUS_TXREADY ; 
 scalar_t__ DB2K_REG_CPLD_STATUS ; 
 int ETIMEDOUT ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev)
{
	int i;

	for (i = 0; i < 100; i++) {
		if (FUNC0(dev->mmio + DB2K_REG_CPLD_STATUS) &
		    DB2K_CPLD_STATUS_TXREADY) {
			return 0;
		}
		FUNC1(1);
	}
	return -ETIMEDOUT;
}