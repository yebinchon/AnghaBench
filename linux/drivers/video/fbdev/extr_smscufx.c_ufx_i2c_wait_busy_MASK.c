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
typedef  int u32 ;
struct ufx_data {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct ufx_data*,int,int*) ; 
 int FUNC4 (struct ufx_data*,int,int) ; 

__attribute__((used)) static int FUNC5(struct ufx_data *dev)
{
	u32 tmp;
	int i, status;

	for (i = 0; i < 15; i++) {
		status = FUNC3(dev, 0x1100, &tmp);
		FUNC0(status, "0x1100 read failed");

		/* if BUSY is clear, check for error */
		if ((tmp & 0x80000000) == 0) {
			if (tmp & 0x20000000) {
				FUNC2("I2C read failed, 0x1100=0x%08x", tmp);
				return -EIO;
			}

			return 0;
		}

		/* perform the first 10 retries without delay */
		if (i >= 10)
			FUNC1(10);
	}

	FUNC2("I2C access timed out, resetting I2C hardware");
	status =  FUNC4(dev, 0x1100, 0x40000000);
	FUNC0(status, "0x1100 write failed");

	return -ETIMEDOUT;
}