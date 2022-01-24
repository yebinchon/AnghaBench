#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct w1_slave {TYPE_1__* master; struct w1_f19_data* family_data; } ;
struct w1_f19_data {int speed; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  W1_F19_READ_CONFIGURATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct w1_slave*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct w1_slave *sl)
{
	struct w1_f19_data *data = sl->family_data;
	int result = -EIO;

	/* Start onewire transaction. */
	FUNC0(&sl->master->bus_mutex);

	/* Select slave. */
	if (FUNC3(sl))
		goto error;

	/* Read slave configuration byte. */
	FUNC4(sl->master, W1_F19_READ_CONFIGURATION);
	result = FUNC2(sl->master);
	if (result < 0 || result > 2) {
		result = -EIO;
		goto error;
	}

	/* Update speed in slave specific data. */
	data->speed = result;

error:
	/* End onewire transaction. */
	FUNC1(&sl->master->bus_mutex);

	return result;
}