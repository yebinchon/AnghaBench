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
struct sdw_stream_runtime {int dummy; } ;
struct sdw_slave {TYPE_1__* bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sdw_slave*,struct sdw_stream_runtime*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct sdw_slave*,struct sdw_stream_runtime*) ; 

int FUNC4(struct sdw_slave *slave,
			    struct sdw_stream_runtime *stream)
{
	FUNC0(&slave->bus->bus_lock);

	FUNC3(slave->bus, slave, stream);
	FUNC2(slave, stream);

	FUNC1(&slave->bus->bus_lock);

	return 0;
}