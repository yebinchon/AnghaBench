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
struct ad5933_state {int /*<<< orphan*/  client; } ;

/* Variables and functions */
 unsigned char AD5933_MAX_RETRIES ; 
 int /*<<< orphan*/  AD5933_REG_STATUS ; 
 int EAGAIN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ad5933_state *st, unsigned char event)
{
	unsigned char val, timeout = AD5933_MAX_RETRIES;
	int ret;

	while (timeout--) {
		ret =  FUNC0(st->client, AD5933_REG_STATUS, 1, &val);
		if (ret < 0)
			return ret;
		if (val & event)
			return val;
		FUNC1();
		FUNC2(1);
	}

	return -EAGAIN;
}