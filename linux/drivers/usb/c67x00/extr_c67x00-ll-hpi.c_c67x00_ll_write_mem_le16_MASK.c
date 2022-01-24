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
typedef  int u8 ;
typedef  int u16 ;
struct c67x00_device {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct c67x00_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct c67x00_device*,int,int /*<<< orphan*/ *,int) ; 

void FUNC4(struct c67x00_device *dev, u16 addr,
			      void *data, int len)
{
	u8 *buf = data;

	/* Sanity check */
	if (addr + len > 0xffff) {
		FUNC0(&dev->pdev->dev,
			"Trying to write beyond writable region!\n");
		return;
	}

	if (addr & 0x01) {
		/* unaligned access */
		u16 tmp;
		tmp = FUNC1(dev, addr - 1);
		tmp = (tmp & 0x00ff) | (*buf++ << 8);
		FUNC2(dev, addr - 1, tmp);
		addr++;
		len--;
	}

	FUNC3(dev, addr, (__le16 *)buf, len / 2);
	buf += len & ~0x01;
	addr += len & ~0x01;
	len &= 0x01;

	if (len) {
		u16 tmp;
		tmp = FUNC1(dev, addr);
		tmp = (tmp & 0xff00) | *buf;
		FUNC2(dev, addr, tmp);
	}
}