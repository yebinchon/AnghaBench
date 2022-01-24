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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(
	struct adapter *padapter,
	u8 Type,
	u16 	Offset,
	u32 	*Value)
{
	if (Type == 1)
		FUNC0(padapter, Offset, (u8 *)Value);
	else if (Type == 2)
		FUNC1(padapter, Offset, (u16 *)Value);
	else if (Type == 4)
		FUNC2(padapter, Offset, (u32 *)Value);

}