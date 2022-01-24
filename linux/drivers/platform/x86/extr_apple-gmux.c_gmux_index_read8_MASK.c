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
struct apple_gmux_data {int /*<<< orphan*/  index_lock; scalar_t__ iostart; } ;

/* Variables and functions */
 scalar_t__ GMUX_PORT_READ ; 
 scalar_t__ GMUX_PORT_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct apple_gmux_data*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static u8 FUNC6(struct apple_gmux_data *gmux_data, int port)
{
	u8 val;

	FUNC3(&gmux_data->index_lock);
	FUNC1(gmux_data);
	FUNC5((port & 0xff), gmux_data->iostart + GMUX_PORT_READ);
	FUNC0(gmux_data);
	val = FUNC2(gmux_data->iostart + GMUX_PORT_VALUE);
	FUNC4(&gmux_data->index_lock);

	return val;
}