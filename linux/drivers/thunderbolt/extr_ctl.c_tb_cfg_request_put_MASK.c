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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tb_cfg_request_destroy ; 
 int /*<<< orphan*/  tb_cfg_request_lock ; 

void FUNC3(struct tb_cfg_request *req)
{
	FUNC1(&tb_cfg_request_lock);
	FUNC0(&req->kref, tb_cfg_request_destroy);
	FUNC2(&tb_cfg_request_lock);
}