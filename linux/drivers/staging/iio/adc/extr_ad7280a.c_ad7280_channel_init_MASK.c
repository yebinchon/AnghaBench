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
struct ad7280_state {int slave_num; int /*<<< orphan*/ * channels; TYPE_1__* spi; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ad7280_state*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ad7280_state *st)
{
	int dev, cnt = 0;

	st->channels = FUNC3(&st->spi->dev, (st->slave_num + 1) * 12 + 2,
				    sizeof(*st->channels), GFP_KERNEL);
	if (!st->channels)
		return -ENOMEM;

	for (dev = 0; dev <= st->slave_num; dev++)
		FUNC0(st, dev, &cnt);

	FUNC2(&st->channels[cnt], cnt, dev);
	cnt++;
	FUNC1(&st->channels[cnt], cnt);

	return cnt + 1;
}