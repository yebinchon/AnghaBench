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
typedef  int /*<<< orphan*/  u8 ;
struct rspi_data {TYPE_1__* ctlr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rspi_data*,unsigned int) ; 
 unsigned int FUNC2 (struct rspi_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct rspi_data*) ; 
 int FUNC4 (struct rspi_data*) ; 
 int FUNC5 (struct rspi_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct rspi_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rspi_data *rspi, const u8 *tx,
					u8 *rx, unsigned int len)
{
	unsigned int i, n;
	int ret;

	while (len > 0) {
		n = FUNC2(rspi, len);
		FUNC1(rspi, len);
		ret = FUNC5(rspi);
		if (ret < 0) {
			FUNC0(&rspi->ctlr->dev, "transmit timeout\n");
			return ret;
		}
		for (i = 0; i < n; i++)
			FUNC6(rspi, *tx++);

		ret = FUNC4(rspi);
		if (ret < 0) {
			FUNC0(&rspi->ctlr->dev, "receive timeout\n");
			return ret;
		}
		for (i = 0; i < n; i++)
			*rx++ = FUNC3(rspi);

		len -= n;
	}

	return 0;
}