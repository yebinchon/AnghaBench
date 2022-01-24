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
typedef  int /*<<< orphan*/  wrbuf ;
typedef  int u8 ;
struct w1_slave {int /*<<< orphan*/  master; } ;

/* Variables and functions */
 int EIO ; 
 int W1_F1C_READ_EEPROM ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC1 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC3(struct w1_slave *sl, int addr, int len, char *data)
{
	u8 wrbuf[3];

	/* read directly from the EEPROM */
	if (FUNC1(sl))
		return -EIO;

	wrbuf[0] = W1_F1C_READ_EEPROM;
	wrbuf[1] = addr & 0xff;
	wrbuf[2] = addr >> 8;

	FUNC2(sl->master, wrbuf, sizeof(wrbuf));
	return FUNC0(sl->master, data, len);
}