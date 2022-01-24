#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct security_priv {int dummy; } ;
struct TYPE_6__ {struct _adapter* padapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  tkip_timer; } ;
struct TYPE_5__ {struct _adapter* padapter; } ;
struct _adapter {TYPE_3__ stapriv; TYPE_1__ securitypriv; int /*<<< orphan*/  recvpriv; int /*<<< orphan*/  xmitpriv; int /*<<< orphan*/  evtpriv; TYPE_2__ cmdpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct _adapter*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct _adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct _adapter*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct _adapter*) ; 
 int /*<<< orphan*/  r8712_use_tkipkey_handler ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC13(struct _adapter *padapter)
{
	int ret;

	ret = FUNC8(&padapter->cmdpriv);
	if (ret)
		return ret;
	padapter->cmdpriv.padapter = padapter;
	ret = FUNC9(&padapter->evtpriv);
	if (ret)
		return ret;
	ret = FUNC10(padapter);
	if (ret)
		return ret;
	FUNC2(&padapter->xmitpriv, padapter);
	FUNC0(&padapter->recvpriv, padapter);
	FUNC4((unsigned char *)&padapter->securitypriv, 0,
	       sizeof(struct security_priv));
	FUNC12(&padapter->securitypriv.tkip_timer,
		    r8712_use_tkipkey_handler, 0);
	ret = FUNC1(&padapter->stapriv);
	if (ret)
		return ret;
	padapter->stapriv.padapter = padapter;
	FUNC7(padapter);
	FUNC11(padapter);
	FUNC5(padapter);
	FUNC3(padapter);
	FUNC6(padapter);
	return ret;
}