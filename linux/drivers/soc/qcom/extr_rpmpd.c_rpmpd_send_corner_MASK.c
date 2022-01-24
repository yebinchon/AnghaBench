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
struct rpmpd_req {int /*<<< orphan*/  value; int /*<<< orphan*/  nbytes; int /*<<< orphan*/  key; } ;
struct rpmpd {int /*<<< orphan*/  res_id; int /*<<< orphan*/  res_type; int /*<<< orphan*/  rpm; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpmpd_req*,int) ; 

__attribute__((used)) static int FUNC2(struct rpmpd *pd, int state, unsigned int corner)
{
	struct rpmpd_req req = {
		.key = pd->key,
		.nbytes = FUNC0(sizeof(u32)),
		.value = FUNC0(corner),
	};

	return FUNC1(pd->rpm, state, pd->res_type, pd->res_id,
				  &req, sizeof(req));
}