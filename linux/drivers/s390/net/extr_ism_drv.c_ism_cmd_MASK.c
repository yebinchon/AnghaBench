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
struct ism_resp_hdr {int ret; int len; } ;
struct ism_req_hdr {int len; } ;
struct ism_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISM_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ism_dev*,struct ism_resp_hdr*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ism_dev*,struct ism_req_hdr*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ism_resp_hdr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ism_debug_info ; 

__attribute__((used)) static int FUNC5(struct ism_dev *ism, void *cmd)
{
	struct ism_req_hdr *req = cmd;
	struct ism_resp_hdr *resp = cmd;

	FUNC2(ism, req + 1, sizeof(*req), req->len - sizeof(*req));
	FUNC2(ism, req, 0, sizeof(*req));

	FUNC0(resp->ret, ISM_ERROR);

	FUNC1(ism, resp, 0, sizeof(*resp));
	if (resp->ret) {
		FUNC4(ism_debug_info, 0, "cmd failure");
		FUNC3(ism_debug_info, 0, resp, sizeof(*resp));
		goto out;
	}
	FUNC1(ism, resp + 1, sizeof(*resp), resp->len - sizeof(*resp));
out:
	return resp->ret;
}