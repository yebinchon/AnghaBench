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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (struct _adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct _adapter *pAdapter, u16 offset, u32 bitmask)
{
	u32 org_value, bit_shift;

	org_value = FUNC1(pAdapter, offset);
	bit_shift = FUNC0(bitmask);
	return (org_value & bitmask) >> bit_shift;
}