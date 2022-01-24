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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct tb_xdp_error_response {int error; int /*<<< orphan*/  hdr; } ;
struct tb_ctl {int dummy; } ;
typedef  int /*<<< orphan*/  res ;
typedef  enum tb_xdp_error { ____Placeholder_tb_xdp_error } tb_xdp_error ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_RESPONSE ; 
 int /*<<< orphan*/  TB_CFG_PKG_XDOMAIN_RESP ; 
 int FUNC0 (struct tb_ctl*,struct tb_xdp_error_response*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_xdp_error_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct tb_ctl *ctl, u64 route, u8 sequence,
				 enum tb_xdp_error error)
{
	struct tb_xdp_error_response res;

	FUNC1(&res, 0, sizeof(res));
	FUNC2(&res.hdr, route, sequence, ERROR_RESPONSE,
			   sizeof(res));
	res.error = error;

	return FUNC0(ctl, &res, sizeof(res),
				     TB_CFG_PKG_XDOMAIN_RESP);
}