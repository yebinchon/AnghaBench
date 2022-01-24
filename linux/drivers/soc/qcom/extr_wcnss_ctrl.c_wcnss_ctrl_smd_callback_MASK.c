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
typedef  int /*<<< orphan*/  u32 ;
struct wcnss_version_resp {int /*<<< orphan*/  revision; int /*<<< orphan*/  version; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct wcnss_msg_hdr {int type; } ;
struct wcnss_download_nv_resp {int /*<<< orphan*/  status; } ;
struct wcnss_ctrl {int /*<<< orphan*/  dev; int /*<<< orphan*/  cbc; int /*<<< orphan*/  ack; int /*<<< orphan*/  ack_status; } ;
struct rpmsg_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  WCNSS_CBC_COMPLETE_IND 130 
#define  WCNSS_DOWNLOAD_NV_RESP 129 
#define  WCNSS_VERSION_RESP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct wcnss_ctrl* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC5(struct rpmsg_device *rpdev,
				   void *data,
				   int count,
				   void *priv,
				   u32 addr)
{
	struct wcnss_ctrl *wcnss = FUNC3(&rpdev->dev);
	const struct wcnss_download_nv_resp *nvresp;
	const struct wcnss_version_resp *version;
	const struct wcnss_msg_hdr *hdr = data;

	switch (hdr->type) {
	case WCNSS_VERSION_RESP:
		if (count != sizeof(*version)) {
			FUNC2(wcnss->dev,
				"invalid size of version response\n");
			break;
		}

		version = data;
		FUNC4(wcnss->dev, "WCNSS Version %d.%d %d.%d\n",
			 version->major, version->minor,
			 version->version, version->revision);

		FUNC0(&wcnss->ack);
		break;
	case WCNSS_DOWNLOAD_NV_RESP:
		if (count != sizeof(*nvresp)) {
			FUNC2(wcnss->dev,
				"invalid size of download response\n");
			break;
		}

		nvresp = data;
		wcnss->ack_status = nvresp->status;
		FUNC0(&wcnss->ack);
		break;
	case WCNSS_CBC_COMPLETE_IND:
		FUNC1(wcnss->dev, "cold boot complete\n");
		FUNC0(&wcnss->cbc);
		break;
	default:
		FUNC4(wcnss->dev, "unknown message type %d\n", hdr->type);
		break;
	}

	return 0;
}