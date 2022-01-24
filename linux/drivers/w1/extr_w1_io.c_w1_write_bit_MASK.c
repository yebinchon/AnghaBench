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
struct w1_master {TYPE_1__* bus_master; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* write_bit ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ w1_disable_irqs ; 

__attribute__((used)) static void FUNC7(struct w1_master *dev, int bit)
{
	unsigned long flags = 0;

	if(w1_disable_irqs) FUNC1(flags);

	if (bit) {
		dev->bus_master->write_bit(dev->bus_master->data, 0);
		FUNC6(6);
		dev->bus_master->write_bit(dev->bus_master->data, 1);
		FUNC6(64);
	} else {
		dev->bus_master->write_bit(dev->bus_master->data, 0);
		FUNC6(60);
		dev->bus_master->write_bit(dev->bus_master->data, 1);
		FUNC6(10);
	}

	if(w1_disable_irqs) FUNC0(flags);
}