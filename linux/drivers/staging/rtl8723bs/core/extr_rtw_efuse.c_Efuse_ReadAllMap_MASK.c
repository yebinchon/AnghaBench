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
typedef  scalar_t__ u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  TYPE_EFUSE_MAP_LEN ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 

void
FUNC3(
	struct adapter *padapter,
	u8 efuseType,
	u8 *Efuse,
	bool		bPseudoTest)
{
	u16 mapLen = 0;

	FUNC1(padapter, false, true);

	FUNC0(padapter, efuseType, TYPE_EFUSE_MAP_LEN, (void *)&mapLen, bPseudoTest);

	FUNC2(padapter, efuseType, 0, mapLen, Efuse, bPseudoTest);

	FUNC1(padapter, false, false);
}