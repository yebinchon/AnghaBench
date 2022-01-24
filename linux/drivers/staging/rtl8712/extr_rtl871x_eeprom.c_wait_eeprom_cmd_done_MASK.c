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
typedef  int u16 ;
struct _adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_RATE ; 
 int /*<<< orphan*/  EE_9346CR ; 
 int _EEDO ; 
 int FUNC0 (struct _adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct _adapter *padapter)
{
	u8	x;
	u16	i;

	FUNC1(padapter);
	for (i = 0; i < 200; i++) {
		x = FUNC0(padapter, EE_9346CR);
		if (x & _EEDO)
			return true;
		FUNC2(CLOCK_RATE);
	}
	return false;
}