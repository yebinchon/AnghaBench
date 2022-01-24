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
struct tb_xdp_properties_changed_response {int /*<<< orphan*/  hdr; int /*<<< orphan*/  src_uuid; } ;
struct tb_xdp_properties_changed {int /*<<< orphan*/  hdr; int /*<<< orphan*/  src_uuid; } ;
struct tb_ctl {int dummy; } ;
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  PROPERTIES_CHANGED_REQUEST ; 
 int /*<<< orphan*/  TB_CFG_PKG_XDOMAIN_REQ ; 
 int /*<<< orphan*/  TB_CFG_PKG_XDOMAIN_RESP ; 
 int /*<<< orphan*/  XDOMAIN_DEFAULT_TIMEOUT ; 
 int FUNC0 (struct tb_ctl*,struct tb_xdp_properties_changed_response*,int,int /*<<< orphan*/ ,struct tb_xdp_properties_changed_response*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_xdp_properties_changed_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(struct tb_ctl *ctl, u64 route,
					     int retry, const uuid_t *uuid)
{
	struct tb_xdp_properties_changed_response res;
	struct tb_xdp_properties_changed req;
	int ret;

	FUNC1(&req, 0, sizeof(req));
	FUNC2(&req.hdr, route, retry % 4,
			   PROPERTIES_CHANGED_REQUEST, sizeof(req));
	FUNC4(&req.src_uuid, uuid);

	FUNC1(&res, 0, sizeof(res));
	ret = FUNC0(ctl, &req, sizeof(req),
				   TB_CFG_PKG_XDOMAIN_REQ, &res, sizeof(res),
				   TB_CFG_PKG_XDOMAIN_RESP,
				   XDOMAIN_DEFAULT_TIMEOUT);
	if (ret)
		return ret;

	return FUNC3(&res.hdr);
}