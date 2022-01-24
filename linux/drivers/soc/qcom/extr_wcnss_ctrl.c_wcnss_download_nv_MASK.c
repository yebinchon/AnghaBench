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
struct TYPE_2__ {scalar_t__ len; int /*<<< orphan*/  type; } ;
struct wcnss_download_nv_req {int last; scalar_t__ seq; TYPE_1__ hdr; scalar_t__ frag_size; int /*<<< orphan*/  fragment; } ;
struct wcnss_ctrl {scalar_t__ ack_status; int /*<<< orphan*/  dev; int /*<<< orphan*/  ack; int /*<<< orphan*/  channel; } ;
struct firmware {void* data; scalar_t__ size; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NVBIN_FILE ; 
 scalar_t__ NV_FRAGMENT_SIZE ; 
 scalar_t__ WCNSS_ACK_COLD_BOOTING ; 
 int /*<<< orphan*/  WCNSS_DOWNLOAD_NV_REQ ; 
 int /*<<< orphan*/  WCNSS_REQUEST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wcnss_download_nv_req*) ; 
 struct wcnss_download_nv_req* FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct wcnss_download_nv_req*,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct wcnss_ctrl *wcnss, bool *expect_cbc)
{
	struct wcnss_download_nv_req *req;
	const struct firmware *fw;
	const void *data;
	ssize_t left;
	int ret;

	req = FUNC2(sizeof(*req) + NV_FRAGMENT_SIZE, GFP_KERNEL);
	if (!req)
		return -ENOMEM;

	ret = FUNC5(&fw, NVBIN_FILE, wcnss->dev);
	if (ret < 0) {
		FUNC0(wcnss->dev, "Failed to load nv file %s: %d\n",
			NVBIN_FILE, ret);
		goto free_req;
	}

	data = fw->data;
	left = fw->size;

	req->hdr.type = WCNSS_DOWNLOAD_NV_REQ;
	req->hdr.len = sizeof(*req) + NV_FRAGMENT_SIZE;

	req->last = 0;
	req->frag_size = NV_FRAGMENT_SIZE;

	req->seq = 0;
	do {
		if (left <= NV_FRAGMENT_SIZE) {
			req->last = 1;
			req->frag_size = left;
			req->hdr.len = sizeof(*req) + left;
		}

		FUNC3(req->fragment, data, req->frag_size);

		ret = FUNC6(wcnss->channel, req, req->hdr.len);
		if (ret < 0) {
			FUNC0(wcnss->dev, "failed to send smd packet\n");
			goto release_fw;
		}

		/* Increment for next fragment */
		req->seq++;

		data += NV_FRAGMENT_SIZE;
		left -= NV_FRAGMENT_SIZE;
	} while (left > 0);

	ret = FUNC7(&wcnss->ack, WCNSS_REQUEST_TIMEOUT);
	if (!ret) {
		FUNC0(wcnss->dev, "timeout waiting for nv upload ack\n");
		ret = -ETIMEDOUT;
	} else {
		*expect_cbc = wcnss->ack_status == WCNSS_ACK_COLD_BOOTING;
		ret = 0;
	}

release_fw:
	FUNC4(fw);
free_req:
	FUNC1(req);

	return ret;
}