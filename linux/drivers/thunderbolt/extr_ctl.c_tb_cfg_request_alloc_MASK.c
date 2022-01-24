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
struct tb_cfg_request {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tb_cfg_request* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct tb_cfg_request *FUNC2(void)
{
	struct tb_cfg_request *req;

	req = FUNC1(sizeof(*req), GFP_KERNEL);
	if (!req)
		return NULL;

	FUNC0(&req->kref);

	return req;
}