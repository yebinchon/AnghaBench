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
struct w1_slave {int /*<<< orphan*/  dev; } ;
struct bq27xxx_device_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bq27xxx_device_info*) ; 
 struct bq27xxx_device_info* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct w1_slave *sl)
{
	struct bq27xxx_device_info *di = FUNC1(&sl->dev);

	FUNC0(di);
}