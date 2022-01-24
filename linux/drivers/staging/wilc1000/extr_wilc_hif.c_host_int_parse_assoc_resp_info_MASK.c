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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct wilc_vif {int /*<<< orphan*/  ndev; struct host_if_drv* hif_drv; } ;
struct wilc_conn_info {scalar_t__ status; scalar_t__ req_ies_len; int /*<<< orphan*/ * req_ies; scalar_t__ resp_ies_len; int /*<<< orphan*/ * resp_ies; int /*<<< orphan*/  bssid; int /*<<< orphan*/  arg; int /*<<< orphan*/  (* conn_result ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct host_if_drv {int /*<<< orphan*/  hif_state; int /*<<< orphan*/  assoc_bssid; struct wilc_conn_info conn_info; int /*<<< orphan*/  connect_timer; int /*<<< orphan*/  assoc_resp; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_DISCONN_EVENT_CONN_RESP ; 
 int /*<<< orphan*/  HOST_IF_CONNECTED ; 
 int /*<<< orphan*/  HOST_IF_IDLE ; 
 scalar_t__ WILC_MAC_STATUS_CONNECTED ; 
 int /*<<< orphan*/  WILC_MAX_ASSOC_RESP_FRAME_SIZE ; 
 scalar_t__ WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wilc_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,struct wilc_conn_info*) ; 

__attribute__((used)) static inline void FUNC8(struct wilc_vif *vif,
						  u8 mac_status)
{
	struct host_if_drv *hif_drv = vif->hif_drv;
	struct wilc_conn_info *conn_info = &hif_drv->conn_info;

	if (mac_status == WILC_MAC_STATUS_CONNECTED) {
		u32 assoc_resp_info_len;

		FUNC4(hif_drv->assoc_resp, 0, WILC_MAX_ASSOC_RESP_FRAME_SIZE);

		FUNC2(vif, hif_drv->assoc_resp,
					    WILC_MAX_ASSOC_RESP_FRAME_SIZE,
					    &assoc_resp_info_len);

		if (assoc_resp_info_len != 0) {
			s32 err = 0;

			err = FUNC7(hif_drv->assoc_resp,
							 assoc_resp_info_len,
							 conn_info);
			if (err)
				FUNC5(vif->ndev,
					   "wilc_parse_assoc_resp_info() returned error %d\n",
					   err);
		}
	}

	FUNC0(&hif_drv->connect_timer);
	conn_info->conn_result(CONN_DISCONN_EVENT_CONN_RESP, mac_status,
			       hif_drv->conn_info.arg);

	if (mac_status == WILC_MAC_STATUS_CONNECTED &&
	    conn_info->status == WLAN_STATUS_SUCCESS) {
		FUNC1(hif_drv->assoc_bssid, conn_info->bssid);
		hif_drv->hif_state = HOST_IF_CONNECTED;
	} else {
		hif_drv->hif_state = HOST_IF_IDLE;
	}

	FUNC3(conn_info->resp_ies);
	conn_info->resp_ies = NULL;
	conn_info->resp_ies_len = 0;

	FUNC3(conn_info->req_ies);
	conn_info->req_ies = NULL;
	conn_info->req_ies_len = 0;
}