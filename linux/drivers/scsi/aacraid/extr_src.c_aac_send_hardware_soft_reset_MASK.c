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
typedef  int u_int32_t ;
struct aac_dev {scalar_t__ base; } ;

/* Variables and functions */
 int IBW_SWR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct aac_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void FUNC4(struct aac_dev *dev)
{
	u_int32_t val;

	FUNC0(dev);
	val = FUNC2(((char *)(dev->base) + IBW_SWR_OFFSET));
	val |= 0x01;
	FUNC3(val, ((char *)(dev->base) + IBW_SWR_OFFSET));
	FUNC1(20000);
}