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
typedef  int u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_TRXDMA_CTRL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC8(struct adapter *Adapter, u16 beQ,
				       u16 bkQ, u16 viQ, u16 voQ, u16 mgtQ,
				       u16 hiQ)
{
	u16 value16	= (FUNC6(Adapter, REG_TRXDMA_CTRL) & 0x7);

	value16 |= FUNC0(beQ)	| FUNC1(bkQ) |
		   FUNC4(viQ)	| FUNC5(voQ) |
		   FUNC3(mgtQ) | FUNC2(hiQ);

	FUNC7(Adapter, REG_TRXDMA_CTRL, value16);
}