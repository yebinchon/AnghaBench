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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBP_128 ; 
 int /*<<< orphan*/  REG_PBP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct adapter *Adapter)
{
	/*  Tx page size is always 128. */

	u8 value8;

	value8 = FUNC0(PBP_128) | FUNC1(PBP_128);
	FUNC2(Adapter, REG_PBP, value8);
}