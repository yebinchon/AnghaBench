#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct w1_slave {TYPE_1__* master; struct w1_eprom_data* family_data; } ;
struct w1_eprom_data {scalar_t__* eprom; int /*<<< orphan*/  page_present; } ;
struct TYPE_4__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int EIO ; 
 int W1_PAGE_SIZE ; 
 scalar_t__ W1_READ_DATA_CRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__*,int) ; 
 scalar_t__ FUNC7 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC9(struct w1_slave *sl, int pageno)
{
	struct w1_eprom_data *data = sl->family_data;
	int pgoff = pageno * W1_PAGE_SIZE;
	int ret = -EIO;
	u8 buf[3];
	u8 crc8;

	if (FUNC3(pageno, data->page_present))
		return 0; /* page already present */

	FUNC0(&sl->master->bus_mutex);

	if (FUNC7(sl))
		goto err;

	buf[0] = W1_READ_DATA_CRC;
	buf[1] = pgoff & 0xff;
	buf[2] = pgoff >> 8;
	FUNC8(sl->master, buf, 3);

	crc8 = FUNC5(sl->master);
	if (FUNC4(buf, 3) != crc8)
		goto err;

	FUNC6(sl->master, &data->eprom[pgoff], W1_PAGE_SIZE);

	crc8 = FUNC5(sl->master);
	if (FUNC4(&data->eprom[pgoff], W1_PAGE_SIZE) != crc8)
		goto err;

	FUNC2(pageno, data->page_present); /* mark page present */
	ret = 0;
err:
	FUNC1(&sl->master->bus_mutex);
	return ret;
}