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
struct isp116x {int /*<<< orphan*/  addr_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp116x*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct isp116x *isp116x, unsigned reg)
{
	FUNC1(reg & 0xff, isp116x->addr_reg);
	FUNC0(isp116x, 300);
}