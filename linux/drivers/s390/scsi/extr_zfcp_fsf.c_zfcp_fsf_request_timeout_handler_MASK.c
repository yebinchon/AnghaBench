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
struct zfcp_fsf_req {struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int dummy; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZFCP_STATUS_COMMON_ERP_FAILED ; 
 struct zfcp_fsf_req* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct zfcp_fsf_req* fsf_req ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC1 (struct zfcp_adapter*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct zfcp_adapter*) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct zfcp_fsf_req *fsf_req = FUNC0(fsf_req, t, timer);
	struct zfcp_adapter *adapter = fsf_req->adapter;

	FUNC2(adapter);
	FUNC1(adapter, ZFCP_STATUS_COMMON_ERP_FAILED,
				"fsrth_1");
}