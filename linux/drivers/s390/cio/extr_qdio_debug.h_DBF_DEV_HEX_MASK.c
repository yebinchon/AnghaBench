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
struct qdio_irq {int /*<<< orphan*/  debug_area; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,void*,int) ; 

__attribute__((used)) static inline void FUNC1(struct qdio_irq *dev, void *addr,
			       int len, int level)
{
	FUNC0(dev->debug_area, level, addr, len);
}