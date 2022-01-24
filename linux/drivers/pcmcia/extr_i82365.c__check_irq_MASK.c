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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i365_count_irq ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(int irq, int flags)
{
    if (FUNC1(irq, i365_count_irq, flags, "x", i365_count_irq) != 0)
	return -1;
    FUNC0(irq, i365_count_irq);
    return 0;
}