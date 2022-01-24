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
typedef  int u8 ;
struct rspi_data {int spsr; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  RSPI_SPSR ; 
 int /*<<< orphan*/  FUNC0 (struct rspi_data*,int) ; 
 int FUNC1 (struct rspi_data*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rspi_data *rspi, u8 wait_mask,
				   u8 enable_bit)
{
	int ret;

	rspi->spsr = FUNC1(rspi, RSPI_SPSR);
	if (rspi->spsr & wait_mask)
		return 0;

	FUNC0(rspi, enable_bit);
	ret = FUNC2(rspi->wait, rspi->spsr & wait_mask, HZ);
	if (ret == 0 && !(rspi->spsr & wait_mask))
		return -ETIMEDOUT;

	return 0;
}