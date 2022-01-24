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
struct tb_cfg_result {int err; scalar_t__ response_port; int /*<<< orphan*/  tb_error; int /*<<< orphan*/  response_route; int /*<<< orphan*/  member_0; } ;
struct ctl_pkg {struct cfg_error_pkg* buffer; } ;
struct cfg_error_pkg {scalar_t__ port; int /*<<< orphan*/  error; int /*<<< orphan*/  zero1; int /*<<< orphan*/  zero3; int /*<<< orphan*/  zero2; int /*<<< orphan*/  header; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_CFG_PKG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ctl_pkg const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct tb_cfg_result FUNC3(const struct ctl_pkg *response)
{
	struct cfg_error_pkg *pkg = response->buffer;
	struct tb_cfg_result res = { 0 };
	res.response_route = FUNC2(&pkg->header);
	res.response_port = 0;
	res.err = FUNC1(response, sizeof(*pkg), TB_CFG_PKG_ERROR,
			       FUNC2(&pkg->header));
	if (res.err)
		return res;

	FUNC0(pkg->zero1, "pkg->zero1 is %#x\n", pkg->zero1);
	FUNC0(pkg->zero2, "pkg->zero1 is %#x\n", pkg->zero1);
	FUNC0(pkg->zero3, "pkg->zero1 is %#x\n", pkg->zero1);
	res.err = 1;
	res.tb_error = pkg->error;
	res.response_port = pkg->port;
	return res;

}