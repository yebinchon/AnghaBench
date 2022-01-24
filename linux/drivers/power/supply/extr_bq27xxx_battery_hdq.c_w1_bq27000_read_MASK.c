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
typedef  int u8 ;
struct w1_slave {TYPE_1__* master; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus_mutex; } ;

/* Variables and functions */
 unsigned int HDQ_CMD_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct w1_slave *sl, unsigned int reg)
{
	u8 val;

	FUNC0(&sl->master->bus_mutex);
	FUNC3(sl->master, HDQ_CMD_READ | reg);
	val = FUNC2(sl->master);
	FUNC1(&sl->master->bus_mutex);

	return val;
}