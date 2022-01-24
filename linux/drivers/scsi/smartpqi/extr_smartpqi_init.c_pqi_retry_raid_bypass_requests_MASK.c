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
struct pqi_io_request {int dummy; } ;
struct pqi_ctrl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pqi_ctrl_info*,struct pqi_io_request*,int) ; 
 scalar_t__ FUNC1 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_ctrl_info*) ; 
 struct pqi_io_request* FUNC4 (struct pqi_ctrl_info*) ; 
 int FUNC5 (struct pqi_io_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static void FUNC7(struct pqi_ctrl_info *ctrl_info)
{
	int rc;
	struct pqi_io_request *io_request;

	FUNC2(ctrl_info);

	while (1) {
		if (FUNC1(ctrl_info))
			break;
		io_request = FUNC4(ctrl_info);
		if (!io_request)
			break;
		rc = FUNC5(io_request);
		if (rc) {
			FUNC0(ctrl_info, io_request,
				true);
			FUNC6(ctrl_info);
			break;
		}
	}

	FUNC3(ctrl_info);
}