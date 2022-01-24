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
struct tb_xdp_properties_changed_response {int /*<<< orphan*/  hdr; } ;
struct tb_ctl {int dummy; } ;
typedef  int /*<<< orphan*/  res ;

/* Variables and functions */
 int /*<<< orphan*/  PROPERTIES_CHANGED_RESPONSE ; 
 int /*<<< orphan*/  TB_CFG_PKG_XDOMAIN_RESP ; 
 int FUNC0 (struct tb_ctl*,struct tb_xdp_properties_changed_response*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_xdp_properties_changed_response*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct tb_ctl *ctl, u64 route, u8 sequence)
{
	struct tb_xdp_properties_changed_response res;

	FUNC1(&res, 0, sizeof(res));
	FUNC2(&res.hdr, route, sequence,
			   PROPERTIES_CHANGED_RESPONSE, sizeof(res));
	return FUNC0(ctl, &res, sizeof(res),
				     TB_CFG_PKG_XDOMAIN_RESP);
}