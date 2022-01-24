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
typedef  int /*<<< orphan*/  u8 ;
struct rspi_data {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rspi_data*) ; 
 int FUNC1 (struct rspi_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rspi_data *rspi, const u8 *tx, u8 *rx,
			     unsigned int n)
{
	while (n-- > 0) {
		if (tx) {
			int ret = FUNC1(rspi, *tx++);
			if (ret < 0)
				return ret;
		}
		if (rx) {
			int ret = FUNC0(rspi);
			if (ret < 0)
				return ret;
			*rx++ = ret;
		}
	}

	return 0;
}