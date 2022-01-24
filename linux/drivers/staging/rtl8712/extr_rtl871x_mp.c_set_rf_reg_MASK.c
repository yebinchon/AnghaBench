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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int bMaskDWord ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u8 FUNC3(struct _adapter *pAdapter, u8 path, u8 offset, u32 bitmask,
	      u32 value)
{
	u32 org_value, bit_shift, new_value;

	if (bitmask != bMaskDWord) {
		org_value = FUNC1(pAdapter, path, offset);
		bit_shift = FUNC0(bitmask);
		new_value = (org_value & (~bitmask)) | (value << bit_shift);
	} else {
		new_value = value;
	}
	return FUNC2(pAdapter, path, offset, new_value);
}