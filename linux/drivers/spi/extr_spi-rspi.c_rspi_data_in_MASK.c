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
struct rspi_data {TYPE_1__* ctlr; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct rspi_data*) ; 
 int FUNC2 (struct rspi_data*) ; 

__attribute__((used)) static int FUNC3(struct rspi_data *rspi)
{
	int error;
	u8 data;

	error = FUNC2(rspi);
	if (error < 0) {
		FUNC0(&rspi->ctlr->dev, "receive timeout\n");
		return error;
	}
	data = FUNC1(rspi);
	return data;
}