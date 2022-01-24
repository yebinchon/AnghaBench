#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct net_device {scalar_t__ dev_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* LedControlHandler ) (struct _adapter*,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  smart_ps; int /*<<< orphan*/  power_mgnt; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* inirp_init ) (struct _adapter*) ;} ;
struct TYPE_5__ {scalar_t__ mac_addr; } ;
struct _adapter {int bup; int driver_stopped; int surprise_removed; int /*<<< orphan*/  mutex_start; TYPE_4__ ledpriv; TYPE_3__ registrypriv; TYPE_2__ dvobjpriv; TYPE_1__ eeprompriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  LED_CTL_NO_LINK ; 
 scalar_t__ _SUCCESS ; 
 int /*<<< orphan*/  cbw40_enable ; 
 int /*<<< orphan*/  FUNC0 (struct _adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct _adapter* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  r8712_initmac ; 
 int /*<<< orphan*/  FUNC11 (struct _adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct _adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct _adapter*) ; 
 scalar_t__ FUNC14 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct _adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ video_mode ; 

__attribute__((used)) static int FUNC18(struct net_device *pnetdev)
{
	struct _adapter *padapter = FUNC5(pnetdev);

	FUNC3(&padapter->mutex_start);
	if (!padapter->bup) {
		padapter->driver_stopped = false;
		padapter->surprise_removed = false;
		padapter->bup = true;
		if (FUNC13(padapter) != _SUCCESS)
			goto netdev_open_error;
		if (!r8712_initmac) {
			/* Use the mac address stored in the Efuse */
			FUNC1(pnetdev->dev_addr,
			       padapter->eeprompriv.mac_addr, ETH_ALEN);
		} else {
			/* We have to inform f/w to use user-supplied MAC
			 * address.
			 */
			FUNC2(200);
			FUNC11(padapter, (u8 *)pnetdev->dev_addr);
			/*
			 * The "myid" function will get the wifi mac address
			 * from eeprompriv structure instead of netdev
			 * structure. So, we have to overwrite the mac_addr
			 * stored in the eeprompriv structure. In this case,
			 * the real mac address won't be used anymore. So that,
			 * the eeprompriv.mac_addr should store the mac which
			 * users specify.
			 */
			FUNC1(padapter->eeprompriv.mac_addr,
			       pnetdev->dev_addr, ETH_ALEN);
		}
		if (FUNC14(padapter) != _SUCCESS)
			goto netdev_open_error;
		if (!padapter->dvobjpriv.inirp_init)
			goto netdev_open_error;
		else
			padapter->dvobjpriv.inirp_init(padapter);
		FUNC12(padapter, padapter->registrypriv.power_mgnt,
				  padapter->registrypriv.smart_ps);
	}
	if (!FUNC7(pnetdev))
		FUNC8(pnetdev);
	else
		FUNC10(pnetdev);

	if (video_mode)
		FUNC0(padapter, cbw40_enable);
	/* start driver mlme relation timer */
	FUNC15(padapter);
	padapter->ledpriv.LedControlHandler(padapter, LED_CTL_NO_LINK);
	FUNC4(&padapter->mutex_start);
	return 0;
netdev_open_error:
	padapter->bup = false;
	FUNC6(pnetdev);
	FUNC9(pnetdev);
	FUNC4(&padapter->mutex_start);
	return -1;
}