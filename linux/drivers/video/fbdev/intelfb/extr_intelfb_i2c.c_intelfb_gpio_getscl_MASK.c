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
typedef  int u32 ;
struct intelfb_info {int dummy; } ;
struct intelfb_i2c_chan {int /*<<< orphan*/  reg; struct intelfb_info* dinfo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCL_DIR_MASK ; 
 int SCL_VAL_IN ; 

__attribute__((used)) static int FUNC2(void *data)
{
	struct intelfb_i2c_chan *chan = data;
	struct intelfb_info *dinfo = chan->dinfo;
	u32 val;

	FUNC1(chan->reg, SCL_DIR_MASK);
	FUNC1(chan->reg, 0);
	val = FUNC0(chan->reg);
	return ((val & SCL_VAL_IN) != 0);
}