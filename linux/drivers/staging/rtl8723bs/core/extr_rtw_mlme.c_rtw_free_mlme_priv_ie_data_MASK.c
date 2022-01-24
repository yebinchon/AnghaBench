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
struct mlme_priv {int /*<<< orphan*/  p2p_assoc_req_ie_len; int /*<<< orphan*/  p2p_assoc_req_ie; int /*<<< orphan*/  p2p_go_probe_resp_ie_len; int /*<<< orphan*/  p2p_go_probe_resp_ie; int /*<<< orphan*/  p2p_probe_resp_ie_len; int /*<<< orphan*/  p2p_probe_resp_ie; int /*<<< orphan*/  p2p_probe_req_ie_len; int /*<<< orphan*/  p2p_probe_req_ie; int /*<<< orphan*/  p2p_beacon_ie_len; int /*<<< orphan*/  p2p_beacon_ie; int /*<<< orphan*/  wps_assoc_resp_ie_len; int /*<<< orphan*/  wps_assoc_resp_ie; int /*<<< orphan*/  wps_probe_resp_ie_len; int /*<<< orphan*/  wps_probe_resp_ie; int /*<<< orphan*/  wps_probe_req_ie_len; int /*<<< orphan*/  wps_probe_req_ie; int /*<<< orphan*/  wps_beacon_ie_len; int /*<<< orphan*/  wps_beacon_ie; int /*<<< orphan*/  assoc_rsp_len; int /*<<< orphan*/  assoc_rsp; int /*<<< orphan*/  assoc_req_len; int /*<<< orphan*/  assoc_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct mlme_priv *pmlmepriv)
{
	FUNC0(&pmlmepriv->assoc_req, &pmlmepriv->assoc_req_len);
	FUNC0(&pmlmepriv->assoc_rsp, &pmlmepriv->assoc_rsp_len);
	FUNC1(&pmlmepriv->wps_beacon_ie, &pmlmepriv->wps_beacon_ie_len);
	FUNC1(&pmlmepriv->wps_probe_req_ie, &pmlmepriv->wps_probe_req_ie_len);
	FUNC1(&pmlmepriv->wps_probe_resp_ie, &pmlmepriv->wps_probe_resp_ie_len);
	FUNC1(&pmlmepriv->wps_assoc_resp_ie, &pmlmepriv->wps_assoc_resp_ie_len);

	FUNC1(&pmlmepriv->p2p_beacon_ie, &pmlmepriv->p2p_beacon_ie_len);
	FUNC1(&pmlmepriv->p2p_probe_req_ie, &pmlmepriv->p2p_probe_req_ie_len);
	FUNC1(&pmlmepriv->p2p_probe_resp_ie, &pmlmepriv->p2p_probe_resp_ie_len);
	FUNC1(&pmlmepriv->p2p_go_probe_resp_ie, &pmlmepriv->p2p_go_probe_resp_ie_len);
	FUNC1(&pmlmepriv->p2p_assoc_req_ie, &pmlmepriv->p2p_assoc_req_ie_len);
}