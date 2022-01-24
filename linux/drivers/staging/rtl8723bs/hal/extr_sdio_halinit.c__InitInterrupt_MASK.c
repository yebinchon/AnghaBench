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
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  REG_HIMR ; 
 int /*<<< orphan*/  REG_HISR ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct adapter *padapter)
{
	/*  HISR - turn all off */
	FUNC2(padapter, REG_HISR, 0);

	/*  HIMR - turn all off */
	FUNC2(padapter, REG_HIMR, 0);

	/*  */
	/*  Initialize and enable SDIO Host Interrupt. */
	/*  */
	FUNC0(padapter);

	/*  */
	/*  Initialize system Host Interrupt. */
	/*  */
	FUNC1(padapter);
}