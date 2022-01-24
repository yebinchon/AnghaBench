#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* LedControlHandler ) (struct _adapter*,int /*<<< orphan*/ ) ;} ;
struct _adapter {TYPE_1__ ledpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_CTL_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct _adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct _adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *pnetdev)
{
	struct _adapter *padapter = FUNC1(pnetdev);

	/* Close LED*/
	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_POWER_OFF);
	FUNC0(200);

	/*s1.*/
	if (pnetdev) {
		if (!FUNC2(pnetdev))
			FUNC3(pnetdev);
	}
	/*s2.*/
	/*s2-1.  issue disassoc_cmd to fw*/
	FUNC4(padapter);
	/*s2-2.  indicate disconnect to os*/
	FUNC7(padapter);
	/*s2-3.*/
	FUNC5(padapter);
	/*s2-4.*/
	FUNC6(padapter);
	return 0;
}