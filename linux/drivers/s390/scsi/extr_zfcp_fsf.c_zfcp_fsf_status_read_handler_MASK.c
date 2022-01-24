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
struct zfcp_fsf_req {int status; struct fsf_status_read_buffer* data; struct zfcp_adapter* adapter; } ;
struct TYPE_6__ {int /*<<< orphan*/  sr_data; } ;
struct zfcp_adapter {int /*<<< orphan*/  stat_work; int /*<<< orphan*/  work_queue; int /*<<< orphan*/  stat_miss; TYPE_3__ pool; int /*<<< orphan*/  adapter_features; TYPE_1__* ccw_device; } ;
struct TYPE_5__ {int /*<<< orphan*/ * word; } ;
struct fsf_status_read_buffer {int status_type; int status_subtype; TYPE_2__ payload; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCH_EVT_LINKDOWN ; 
 int /*<<< orphan*/  FCH_EVT_LINKUP ; 
#define  FSF_STATUS_READ_BIT_ERROR_THRESHOLD 135 
#define  FSF_STATUS_READ_FEATURE_UPDATE_ALERT 134 
#define  FSF_STATUS_READ_INCOMING_ELS 133 
#define  FSF_STATUS_READ_LINK_DOWN 132 
#define  FSF_STATUS_READ_LINK_UP 131 
#define  FSF_STATUS_READ_NOTIFICATION_LOST 130 
#define  FSF_STATUS_READ_PORT_CLOSED 129 
#define  FSF_STATUS_READ_SENSE_DATA_AVAIL 128 
 int FSF_STATUS_READ_SUB_INCOMING_ELS ; 
 int ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED ; 
 int ZFCP_STATUS_COMMON_ERP_FAILED ; 
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_RUNNING ; 
 int ZFCP_STATUS_FSFREQ_DISMISSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ber_stop ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fsf_status_read_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC8 (struct zfcp_adapter*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct zfcp_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct zfcp_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct zfcp_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC14 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC15 (struct zfcp_fsf_req*) ; 
 int /*<<< orphan*/  FUNC16 (struct zfcp_fsf_req*) ; 

__attribute__((used)) static void FUNC17(struct zfcp_fsf_req *req)
{
	struct zfcp_adapter *adapter = req->adapter;
	struct fsf_status_read_buffer *sr_buf = req->data;

	if (req->status & ZFCP_STATUS_FSFREQ_DISMISSED) {
		FUNC7("fssrh_1", req);
		FUNC3(FUNC5(sr_buf), adapter->pool.sr_data);
		FUNC14(req);
		return;
	}

	FUNC7("fssrh_4", req);

	switch (sr_buf->status_type) {
	case FSF_STATUS_READ_PORT_CLOSED:
		FUNC16(req);
		break;
	case FSF_STATUS_READ_INCOMING_ELS:
		FUNC13(req);
		break;
	case FSF_STATUS_READ_SENSE_DATA_AVAIL:
		break;
	case FSF_STATUS_READ_BIT_ERROR_THRESHOLD:
		FUNC6("fssrh_3", req);
		if (ber_stop) {
			FUNC2(&adapter->ccw_device->dev,
				 "All paths over this FCP device are disused because of excessive bit errors\n");
			FUNC9(adapter, 0, "fssrh_b");
		} else {
			FUNC2(&adapter->ccw_device->dev,
				 "The error threshold for checksum statistics has been exceeded\n");
		}
		break;
	case FSF_STATUS_READ_LINK_DOWN:
		FUNC15(req);
		FUNC12(adapter, FCH_EVT_LINKDOWN, 0);
		break;
	case FSF_STATUS_READ_LINK_UP:
		FUNC1(&adapter->ccw_device->dev,
			 "The local link has been restored\n");
		/* All ports should be marked as ready to run again */
		FUNC10(adapter,
					    ZFCP_STATUS_COMMON_RUNNING);
		FUNC8(adapter,
					ZFCP_STATUS_ADAPTER_LINK_UNPLUGGED |
					ZFCP_STATUS_COMMON_ERP_FAILED,
					"fssrh_2");
		FUNC12(adapter, FCH_EVT_LINKUP, 0);

		break;
	case FSF_STATUS_READ_NOTIFICATION_LOST:
		if (sr_buf->status_subtype & FSF_STATUS_READ_SUB_INCOMING_ELS)
			FUNC11(adapter);
		break;
	case FSF_STATUS_READ_FEATURE_UPDATE_ALERT:
		adapter->adapter_features = sr_buf->payload.word[0];
		break;
	}

	FUNC3(FUNC5(sr_buf), adapter->pool.sr_data);
	FUNC14(req);

	FUNC0(&adapter->stat_miss);
	FUNC4(adapter->work_queue, &adapter->stat_work);
}