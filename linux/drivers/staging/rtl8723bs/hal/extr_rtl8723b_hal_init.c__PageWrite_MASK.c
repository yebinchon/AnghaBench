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
typedef  int u8 ;
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 scalar_t__ REG_MCUFWDL ; 
 int FUNC0 (struct adapter*,void*,int) ; 
 int FUNC1 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC3(
	struct adapter *padapter,
	u32 page,
	void *buffer,
	u32 size
)
{
	u8 value8;
	u8 u8Page = (u8) (page & 0x07);

	value8 = (FUNC1(padapter, REG_MCUFWDL+2) & 0xF8) | u8Page;
	FUNC2(padapter, REG_MCUFWDL+2, value8);

	return FUNC0(padapter, buffer, size);
}