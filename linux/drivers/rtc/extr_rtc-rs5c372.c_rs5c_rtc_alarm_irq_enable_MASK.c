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
struct rs5c372 {unsigned char* regs; int /*<<< orphan*/  has_irq; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int FUNC0 (size_t) ; 
 unsigned char RS5C_CTRL1_AALE ; 
 size_t RS5C_REG_CTRL1 ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct rs5c372* FUNC2 (struct i2c_client*) ; 
 scalar_t__ FUNC3 (struct i2c_client*,int,unsigned char) ; 
 int FUNC4 (struct rs5c372*) ; 
 struct i2c_client* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, unsigned int enabled)
{
	struct i2c_client	*client = FUNC5(dev);
	struct rs5c372		*rs5c = FUNC2(client);
	unsigned char		buf;
	int			status, addr;

	buf = rs5c->regs[RS5C_REG_CTRL1];

	if (!rs5c->has_irq)
		return -EINVAL;

	status = FUNC4(rs5c);
	if (status < 0)
		return status;

	addr = FUNC0(RS5C_REG_CTRL1);
	if (enabled)
		buf |= RS5C_CTRL1_AALE;
	else
		buf &= ~RS5C_CTRL1_AALE;

	if (FUNC3(client, addr, buf) < 0) {
		FUNC1(dev, "can't update alarm\n");
		status = -EIO;
	} else
		rs5c->regs[RS5C_REG_CTRL1] = buf;

	return status;
}