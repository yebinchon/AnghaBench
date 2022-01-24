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
struct isp116x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp116x*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp116x*,unsigned int) ; 

__attribute__((used)) static u32 FUNC2(struct isp116x *isp116x, unsigned reg)
{
	FUNC1(isp116x, reg);
	return FUNC0(isp116x);
}