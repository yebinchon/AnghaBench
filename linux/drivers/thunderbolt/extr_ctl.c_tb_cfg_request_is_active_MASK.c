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
struct tb_cfg_request {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_CFG_REQUEST_ACTIVE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(struct tb_cfg_request *req)
{
	return FUNC0(TB_CFG_REQUEST_ACTIVE, &req->flags);
}