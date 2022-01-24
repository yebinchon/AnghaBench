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
struct apple_gmux_data {int /*<<< orphan*/  index_lock; scalar_t__ iostart; } ;

/* Variables and functions */
 scalar_t__ GMUX_PORT_VALUE ; 
 scalar_t__ GMUX_PORT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct apple_gmux_data *gmux_data, int port,
			      u8 val)
{
	FUNC2(&gmux_data->index_lock);
	FUNC4(val, gmux_data->iostart + GMUX_PORT_VALUE);
	FUNC1(gmux_data);
	FUNC4(port & 0xff, gmux_data->iostart + GMUX_PORT_WRITE);
	FUNC0(gmux_data);
	FUNC3(&gmux_data->index_lock);
}