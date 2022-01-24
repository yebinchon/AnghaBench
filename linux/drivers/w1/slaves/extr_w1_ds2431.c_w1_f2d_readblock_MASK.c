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
typedef  char u8 ;
struct w1_slave {int /*<<< orphan*/  dev; int /*<<< orphan*/  master; } ;

/* Variables and functions */
 char W1_F2D_READ_EEPROM ; 
 int W1_F2D_READ_MAXLEN ; 
 int W1_F2D_READ_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC5(struct w1_slave *sl, int off, int count, char *buf)
{
	u8 wrbuf[3];
	u8 cmp[W1_F2D_READ_MAXLEN];
	int tries = W1_F2D_READ_RETRIES;

	do {
		wrbuf[0] = W1_F2D_READ_EEPROM;
		wrbuf[1] = off & 0xff;
		wrbuf[2] = off >> 8;

		if (FUNC3(sl))
			return -1;

		FUNC4(sl->master, wrbuf, 3);
		FUNC2(sl->master, buf, count);

		if (FUNC3(sl))
			return -1;

		FUNC4(sl->master, wrbuf, 3);
		FUNC2(sl->master, cmp, count);

		if (!FUNC1(cmp, buf, count))
			return 0;
	} while (--tries);

	FUNC0(&sl->dev, "proof reading failed %d times\n",
			W1_F2D_READ_RETRIES);

	return -1;
}