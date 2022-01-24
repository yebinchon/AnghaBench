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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_field32 {int dummy; } ;
struct rt2x00_dev {int /*<<< orphan*/  irqmask_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rt2x00_field32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct rt2x00_dev *rt2x00dev,
					      struct rt2x00_field32 irq_field)
{
	u32 reg;

	/*
	 * Enable a single interrupt. The interrupt mask register
	 * access needs locking.
	 */
	FUNC3(&rt2x00dev->irqmask_lock);

	reg = FUNC1(rt2x00dev, CSR8);
	FUNC0(&reg, irq_field, 0);
	FUNC2(rt2x00dev, CSR8, reg);

	FUNC4(&rt2x00dev->irqmask_lock);
}