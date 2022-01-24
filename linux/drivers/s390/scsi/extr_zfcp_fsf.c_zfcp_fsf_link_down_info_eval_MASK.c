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
struct zfcp_fsf_req {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {TYPE_1__* ccw_device; int /*<<< orphan*/  status; } ;
struct fsf_link_down_info {int error_code; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  FSF_PSQ_LINK_FABRIC_LOGIN_UNABLE 139 
#define  FSF_PSQ_LINK_FIRMWARE_UPDATE 138 
#define  FSF_PSQ_LINK_INVALID_WWPN 137 
#define  FSF_PSQ_LINK_MODE_TABLE_CURRUPTED 136 
#define  FSF_PSQ_LINK_NO_FABRIC_RESOURCES 135 
#define  FSF_PSQ_LINK_NO_FCP 134 
#define  FSF_PSQ_LINK_NO_FCP_RESOURCES 133 
#define  FSF_PSQ_LINK_NO_LIGHT 132 
#define  FSF_PSQ_LINK_NO_NPIV_SUPPORT 131 
#define  FSF_PSQ_LINK_NO_WWPN_ASSIGNMENT 130 
#define  FSF_PSQ_LINK_WRAP_PLUG 129 
#define  FSF_PSQ_LINK_WWPN_ASSIGNMENT_CORRUPTED 128 
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_adapter*) ; 

__attribute__((used)) static void FUNC5(struct zfcp_fsf_req *req,
					 struct fsf_link_down_info *link_down)
{
	struct zfcp_adapter *adapter = req->adapter;

	if (FUNC1(&adapter->status) & ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED)
		return;

	FUNC0(ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED, &adapter->status);

	FUNC4(adapter);

	if (!link_down)
		goto out;

	switch (link_down->error_code) {
	case FSF_PSQ_LINK_NO_LIGHT:
		FUNC2(&req->adapter->ccw_device->dev,
			 "There is no light signal from the local "
			 "fibre channel cable\n");
		break;
	case FSF_PSQ_LINK_WRAP_PLUG:
		FUNC2(&req->adapter->ccw_device->dev,
			 "There is a wrap plug instead of a fibre "
			 "channel cable\n");
		break;
	case FSF_PSQ_LINK_NO_FCP:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The adjacent fibre channel node does not "
			 "support FCP\n");
		break;
	case FSF_PSQ_LINK_FIRMWARE_UPDATE:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The FCP device is suspended because of a "
			 "firmware update\n");
		break;
	case FSF_PSQ_LINK_INVALID_WWPN:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The FCP device detected a WWPN that is "
			 "duplicate or not valid\n");
		break;
	case FSF_PSQ_LINK_NO_NPIV_SUPPORT:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The fibre channel fabric does not support NPIV\n");
		break;
	case FSF_PSQ_LINK_NO_FCP_RESOURCES:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The FCP adapter cannot support more NPIV ports\n");
		break;
	case FSF_PSQ_LINK_NO_FABRIC_RESOURCES:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The adjacent switch cannot support "
			 "more NPIV ports\n");
		break;
	case FSF_PSQ_LINK_FABRIC_LOGIN_UNABLE:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The FCP adapter could not log in to the "
			 "fibre channel fabric\n");
		break;
	case FSF_PSQ_LINK_WWPN_ASSIGNMENT_CORRUPTED:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The WWPN assignment file on the FCP adapter "
			 "has been damaged\n");
		break;
	case FSF_PSQ_LINK_MODE_TABLE_CURRUPTED:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The mode table on the FCP adapter "
			 "has been damaged\n");
		break;
	case FSF_PSQ_LINK_NO_WWPN_ASSIGNMENT:
		FUNC2(&req->adapter->ccw_device->dev,
			 "All NPIV ports on the FCP adapter have "
			 "been assigned\n");
		break;
	default:
		FUNC2(&req->adapter->ccw_device->dev,
			 "The link between the FCP adapter and "
			 "the FC fabric is down\n");
	}
out:
	FUNC3(adapter, ZFCP_STATUS_COMMON_ERP_FAILED);
}