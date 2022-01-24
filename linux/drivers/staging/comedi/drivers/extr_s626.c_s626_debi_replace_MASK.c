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
 unsigned int S626_DEBI_CMD_RDWORD ; 
 unsigned int S626_DEBI_CMD_WRWORD ; 
 scalar_t__ S626_P_DEBIAD ; 
 scalar_t__ S626_P_DEBICMD ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev, unsigned int addr,
			      unsigned int mask, unsigned int wdata)
{
	unsigned int val;

	addr &= 0xffff;
	FUNC2(S626_DEBI_CMD_RDWORD | addr, dev->mmio + S626_P_DEBICMD);
	FUNC1(dev);

	FUNC2(S626_DEBI_CMD_WRWORD | addr, dev->mmio + S626_P_DEBICMD);
	val = FUNC0(dev->mmio + S626_P_DEBIAD);
	val &= mask;
	val |= wdata;
	FUNC2(val & 0xffff, dev->mmio + S626_P_DEBIAD);
	FUNC1(dev);
}