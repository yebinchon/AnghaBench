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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFUSE_MAP_LEN_88E ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int,int) ; 

__attribute__((used)) static void FUNC2(struct adapter *pAdapter, u8 efuseType, u8 *Efuse)
{
	FUNC1(pAdapter, false, true);

	FUNC0(pAdapter, efuseType, 0, EFUSE_MAP_LEN_88E, Efuse);

	FUNC1(pAdapter, false, false);
}