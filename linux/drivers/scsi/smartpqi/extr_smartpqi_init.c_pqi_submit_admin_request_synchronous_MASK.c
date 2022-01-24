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
struct pqi_general_admin_response {int dummy; } ;
struct pqi_general_admin_request {int /*<<< orphan*/  function_code; } ;
struct pqi_ctrl_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pqi_ctrl_info*,struct pqi_general_admin_response*) ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_ctrl_info*,struct pqi_general_admin_request*) ; 
 int FUNC2 (struct pqi_general_admin_response*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(
	struct pqi_ctrl_info *ctrl_info,
	struct pqi_general_admin_request *request,
	struct pqi_general_admin_response *response)
{
	int rc;

	FUNC1(ctrl_info, request);

	rc = FUNC0(ctrl_info, response);

	if (rc == 0)
		rc = FUNC2(response,
			request->function_code);

	return rc;
}