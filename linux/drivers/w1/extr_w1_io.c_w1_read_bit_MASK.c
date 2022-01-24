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
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int (* read_bit ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  data; int /*<<< orphan*/  (* write_bit ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static u8 FUNC6(struct w1_master *dev)
{
	int result;
	unsigned long flags = 0;

	/* sample timing is critical here */
	FUNC1(flags);
	dev->bus_master->write_bit(dev->bus_master->data, 0);
	FUNC5(6);
	dev->bus_master->write_bit(dev->bus_master->data, 1);
	FUNC5(9);

	result = dev->bus_master->read_bit(dev->bus_master->data);
	FUNC0(flags);

	FUNC5(55);

	return result & 0x1;
}