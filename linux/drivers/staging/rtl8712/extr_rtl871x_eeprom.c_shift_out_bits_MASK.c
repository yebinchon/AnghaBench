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
typedef  int u16 ;
struct _adapter {scalar_t__ surprise_removed; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_RATE ; 
 int /*<<< orphan*/  EE_9346CR ; 
 int _EEDI ; 
 int _EEDO ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int*) ; 
 int FUNC1 (struct _adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*,int*) ; 

__attribute__((used)) static void FUNC5(struct _adapter *padapter, u16 data, u16 count)
{
	u16 x, mask;

	if (padapter->surprise_removed)
		goto out;
	mask = 0x01 << (count - 1);
	x = FUNC1(padapter, EE_9346CR);
	x &= ~(_EEDO | _EEDI);
	do {
		x &= ~_EEDI;
		if (data & mask)
			x |= _EEDI;
		if (padapter->surprise_removed)
			goto out;
		FUNC2(padapter, EE_9346CR, (u8)x);
		FUNC3(CLOCK_RATE);
		FUNC4(padapter, &x);
		FUNC0(padapter, &x);
		mask >>= 1;
	} while (mask);
	if (padapter->surprise_removed)
		goto out;
	x &= ~_EEDI;
	FUNC2(padapter, EE_9346CR, (u8)x);
out:;
}