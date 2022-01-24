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
 int /*<<< orphan*/  EE_9346CR ; 
 int _EECS ; 
 int _EEDI ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int*) ; 
 int FUNC1 (struct _adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*,int*) ; 

__attribute__((used)) static void FUNC4(struct _adapter *padapter)
{
	u16 x;

	if (padapter->surprise_removed)
		return;
	x = FUNC1(padapter, EE_9346CR);
	if (padapter->surprise_removed)
		return;
	x &= ~(_EECS | _EEDI);
	FUNC2(padapter, EE_9346CR, (u8)x);
	if (padapter->surprise_removed)
		return;
	FUNC3(padapter, &x);
	if (padapter->surprise_removed)
		return;
	FUNC0(padapter, &x);
}