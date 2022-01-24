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
typedef  int u16 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct aspeed_vuart {scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ ASPEED_VUART_ADDRH ; 
 scalar_t__ ASPEED_VUART_ADDRL ; 
 scalar_t__ PAGE_SIZE ; 
 struct aspeed_vuart* FUNC0 (struct device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct aspeed_vuart *vuart = FUNC0(dev);
	u16 addr;

	addr = (FUNC1(vuart->regs + ASPEED_VUART_ADDRH) << 8) |
		(FUNC1(vuart->regs + ASPEED_VUART_ADDRL));

	return FUNC2(buf, PAGE_SIZE - 1, "0x%x\n", addr);
}