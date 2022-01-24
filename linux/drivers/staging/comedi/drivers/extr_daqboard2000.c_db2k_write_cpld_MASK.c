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
typedef  int /*<<< orphan*/  u16 ;
struct comedi_device {scalar_t__ mmio; } ;

/* Variables and functions */
 int DB2K_CPLD_STATUS_INIT ; 
 scalar_t__ DB2K_REG_CPLD_STATUS ; 
 scalar_t__ DB2K_REG_CPLD_WDATA ; 
 int EIO ; 
 int FUNC0 (struct comedi_device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, u16 data, bool new_cpld)
{
	int result = 0;

	if (new_cpld) {
		result = FUNC0(dev);
		if (result)
			return result;
	} else {
		FUNC2(10, 20);
	}
	FUNC3(data, dev->mmio + DB2K_REG_CPLD_WDATA);
	if (!(FUNC1(dev->mmio + DB2K_REG_CPLD_STATUS) & DB2K_CPLD_STATUS_INIT))
		result = -EIO;

	return result;
}