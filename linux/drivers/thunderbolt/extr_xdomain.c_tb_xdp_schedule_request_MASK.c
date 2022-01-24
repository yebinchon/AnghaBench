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
struct xdomain_request_work {int /*<<< orphan*/  work; int /*<<< orphan*/  tb; int /*<<< orphan*/  pkg; } ;
struct tb_xdp_header {int dummy; } ;
struct tb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdomain_request_work*) ; 
 struct xdomain_request_work* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_xdp_header const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tb*) ; 
 int /*<<< orphan*/  tb_xdp_handle_request ; 

__attribute__((used)) static bool
FUNC6(struct tb *tb, const struct tb_xdp_header *hdr,
			size_t size)
{
	struct xdomain_request_work *xw;

	xw = FUNC2(sizeof(*xw), GFP_KERNEL);
	if (!xw)
		return false;

	FUNC0(&xw->work, tb_xdp_handle_request);
	xw->pkg = FUNC3(hdr, size, GFP_KERNEL);
	if (!xw->pkg) {
		FUNC1(xw);
		return false;
	}
	xw->tb = FUNC5(tb);

	FUNC4(&xw->work);
	return true;
}