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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct tb_xdp_uuid_response {int /*<<< orphan*/  src_route_lo; int /*<<< orphan*/  src_route_hi; int /*<<< orphan*/  src_uuid; int /*<<< orphan*/  hdr; } ;
struct tb_ctl {int dummy; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int /*<<< orphan*/  TB_CFG_PKG_XDOMAIN_RESP ; 
 int /*<<< orphan*/  UUID_RESPONSE ; 
 int FUNC0 (struct tb_ctl*,struct tb_xdp_uuid_response*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_xdp_uuid_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC6(struct tb_ctl *ctl, u64 route, u8 sequence,
				const uuid_t *uuid)
{
	struct tb_xdp_uuid_response res;

	FUNC2(&res, 0, sizeof(res));
	FUNC3(&res.hdr, route, sequence, UUID_RESPONSE,
			   sizeof(res));

	FUNC5(&res.src_uuid, uuid);
	res.src_route_hi = FUNC4(route);
	res.src_route_lo = FUNC1(route);

	return FUNC0(ctl, &res, sizeof(res),
				     TB_CFG_PKG_XDOMAIN_RESP);
}