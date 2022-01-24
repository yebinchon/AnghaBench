#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct w1_slave {int /*<<< orphan*/  dev; TYPE_1__* master; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ W1_F29_FUNC_READ_PIO_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC6(struct w1_slave *sl, u8 address, unsigned char* buf)
{
	u8 wrbuf[3];
	FUNC0(&sl->dev,
			"Reading with slave: %p, reg addr: %0#4x, buff addr: %p",
			sl, (unsigned int)address, buf);

	if (!buf)
		return -EINVAL;

	FUNC1(&sl->master->bus_mutex);
	FUNC0(&sl->dev, "mutex locked");

	if (FUNC4(sl)) {
		FUNC2(&sl->master->bus_mutex);
		return -EIO;
	}

	wrbuf[0] = W1_F29_FUNC_READ_PIO_REGS;
	wrbuf[1] = address;
	wrbuf[2] = 0;
	FUNC5(sl->master, wrbuf, 3);
	*buf = FUNC3(sl->master);

	FUNC2(&sl->master->bus_mutex);
	FUNC0(&sl->dev, "mutex unlocked");
	return 1;
}