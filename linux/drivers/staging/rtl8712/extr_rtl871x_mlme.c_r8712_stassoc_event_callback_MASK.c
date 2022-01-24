#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct stassoc_event {int /*<<< orphan*/  cam_id; int /*<<< orphan*/  macaddr; } ;
struct sta_info {int ieee8021x_blocked; int /*<<< orphan*/  XPrivacy; int /*<<< orphan*/  mac_id; scalar_t__ qos_option; } ;
struct mlme_priv {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {int asoc_sta_count; } ;
struct TYPE_4__ {int AuthAlgrthm; int /*<<< orphan*/  PrivacyAlgrthm; } ;
struct _adapter {TYPE_2__ stapriv; TYPE_1__ securitypriv; int /*<<< orphan*/  acl_list; struct mlme_priv mlmepriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  WIFI_ADHOC_MASTER_STATE ; 
 int /*<<< orphan*/  WIFI_ADHOC_STATE ; 
 scalar_t__ FUNC0 (struct mlme_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct sta_info* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct _adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct _adapter *adapter, u8 *pbuf)
{
	unsigned long irqL;
	struct sta_info *psta;
	struct mlme_priv *pmlmepriv = &(adapter->mlmepriv);
	struct stassoc_event *pstassoc	= (struct stassoc_event *)pbuf;

	/* to do: */
	if (!FUNC2(&adapter->acl_list, pstassoc->macaddr))
		return;
	psta = FUNC4(&adapter->stapriv, pstassoc->macaddr);
	if (psta != NULL) {
		/*the sta have been in sta_info_queue => do nothing
		 *(between drv has received this event before and
		 * fw have not yet to set key to CAM_ENTRY)
		 */
		return;
	}

	psta = FUNC3(&adapter->stapriv, pstassoc->macaddr);
	if (psta == NULL)
		return;
	/* to do : init sta_info variable */
	psta->qos_option = 0;
	psta->mac_id = FUNC1(pstassoc->cam_id);
	/* psta->aid = (uint)pstassoc->cam_id; */

	if (adapter->securitypriv.AuthAlgrthm == 2)
		psta->XPrivacy = adapter->securitypriv.PrivacyAlgrthm;
	psta->ieee8021x_blocked = false;
	FUNC6(&pmlmepriv->lock, irqL);
	if (FUNC0(pmlmepriv, WIFI_ADHOC_MASTER_STATE) ||
	    FUNC0(pmlmepriv, WIFI_ADHOC_STATE)) {
		if (adapter->stapriv.asoc_sta_count == 2) {
			/* a sta + bc/mc_stainfo (not Ibss_stainfo) */
			FUNC5(adapter);
		}
	}
	FUNC7(&pmlmepriv->lock, irqL);
}