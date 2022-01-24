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
typedef  int /*<<< orphan*/  u16 ;
struct isp116x {int dummy; } ;

/* Variables and functions */
 unsigned int ISP116x_WRITE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct isp116x*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct isp116x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct isp116x *isp116x, unsigned reg,
				unsigned val)
{
	FUNC0(isp116x, reg | ISP116x_WRITE_OFFSET);
	FUNC1(isp116x, (u16) (val & 0xffff));
}