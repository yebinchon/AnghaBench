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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  u64 ;
struct tb_xdp_uuid_response {int /*<<< orphan*/  src_uuid; int /*<<< orphan*/  hdr; } ;
struct tb_xdp_uuid {int /*<<< orphan*/  src_uuid; int /*<<< orphan*/  hdr; } ;
struct tb_ctl {int dummy; } ;
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  TB_CFG_PKG_XDOMAIN_REQ ; 
 int /*<<< orphan*/  TB_CFG_PKG_XDOMAIN_RESP ; 
 int /*<<< orphan*/  UUID_REQUEST ; 
 int /*<<< orphan*/  XDOMAIN_DEFAULT_TIMEOUT ; 
 int FUNC0 (struct tb_ctl*,struct tb_xdp_uuid_response*,int,int /*<<< orphan*/ ,struct tb_xdp_uuid_response*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_xdp_uuid_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct tb_ctl *ctl, u64 route, int retry,
			       uuid_t *uuid)
{
	struct tb_xdp_uuid_response res;
	struct tb_xdp_uuid req;
	int ret;

	FUNC1(&req, 0, sizeof(req));
	FUNC2(&req.hdr, route, retry % 4, UUID_REQUEST,
			   sizeof(req));

	FUNC1(&res, 0, sizeof(res));
	ret = FUNC0(ctl, &req, sizeof(req),
				   TB_CFG_PKG_XDOMAIN_REQ, &res, sizeof(res),
				   TB_CFG_PKG_XDOMAIN_RESP,
				   XDOMAIN_DEFAULT_TIMEOUT);
	if (ret)
		return ret;

	ret = FUNC3(&res.hdr);
	if (ret)
		return ret;

	FUNC4(uuid, &res.src_uuid);
	return 0;
}