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
typedef  int /*<<< orphan*/  u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 

void FUNC4(struct adapter *Adapter, u8 efuseType, u16 _offset, u16 _size_byte, u8 *pbuf)
{
	if (FUNC3(Adapter)) {
		FUNC2(Adapter);
		FUNC0(Adapter, 1);
		FUNC1(Adapter, 0, _offset, _size_byte, pbuf);
		FUNC0(Adapter, 0);
	}
}