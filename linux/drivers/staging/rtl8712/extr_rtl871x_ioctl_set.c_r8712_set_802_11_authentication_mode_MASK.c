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
struct security_priv {int ndisauthtype; int AuthAlgrthm; } ;
struct _adapter {struct security_priv securitypriv; } ;
typedef  enum NDIS_802_11_AUTHENTICATION_MODE { ____Placeholder_NDIS_802_11_AUTHENTICATION_MODE } NDIS_802_11_AUTHENTICATION_MODE ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct _adapter*,struct security_priv*) ; 

u8 FUNC1(struct _adapter *padapter,
				enum NDIS_802_11_AUTHENTICATION_MODE authmode)
{
	struct security_priv *psecuritypriv = &padapter->securitypriv;
	u8 ret;

	psecuritypriv->ndisauthtype = authmode;
	if (psecuritypriv->ndisauthtype > 3)
		psecuritypriv->AuthAlgrthm = 2; /* 802.1x */
	if (FUNC0(padapter, psecuritypriv))
		ret = false;
	else
		ret = true;
	return ret;
}