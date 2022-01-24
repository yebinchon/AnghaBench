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
typedef  unsigned long u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_vuart {scalar_t__ regs; } ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ ASPEED_VUART_GCRB ; 
 unsigned long ASPEED_VUART_GCRB_HOST_SIRQ_MASK ; 
 unsigned long ASPEED_VUART_GCRB_HOST_SIRQ_SHIFT ; 
 struct aspeed_vuart* FUNC0 (struct device*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	struct aspeed_vuart *vuart = FUNC0(dev);
	unsigned long val;
	int err;
	u8 reg;

	err = FUNC1(buf, 0, &val);
	if (err)
		return err;

	val <<= ASPEED_VUART_GCRB_HOST_SIRQ_SHIFT;
	val &= ASPEED_VUART_GCRB_HOST_SIRQ_MASK;

	reg = FUNC2(vuart->regs + ASPEED_VUART_GCRB);
	reg &= ~ASPEED_VUART_GCRB_HOST_SIRQ_MASK;
	reg |= val;
	FUNC3(reg, vuart->regs + ASPEED_VUART_GCRB);

	return count;
}