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
struct iscsi_datain_req {int /*<<< orphan*/  cmd_datain_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct iscsi_datain_req* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lio_dr_cache ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct iscsi_datain_req *FUNC3(void)
{
	struct iscsi_datain_req *dr;

	dr = FUNC1(lio_dr_cache, GFP_ATOMIC);
	if (!dr) {
		FUNC2("Unable to allocate memory for"
				" struct iscsi_datain_req\n");
		return NULL;
	}
	FUNC0(&dr->cmd_datain_node);

	return dr;
}