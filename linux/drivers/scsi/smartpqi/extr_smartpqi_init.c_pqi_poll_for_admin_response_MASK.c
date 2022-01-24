#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pqi_general_admin_response {int dummy; } ;
struct pqi_admin_queues {int oq_ci_copy; int /*<<< orphan*/  oq_ci; scalar_t__ oq_element_array; int /*<<< orphan*/  oq_pi; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; struct pqi_admin_queues admin_queues; } ;
typedef  int pqi_index_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int ETIMEDOUT ; 
 int PQI_ADMIN_OQ_ELEMENT_LENGTH ; 
 int PQI_ADMIN_OQ_NUM_ELEMENTS ; 
 unsigned long PQI_ADMIN_REQUEST_TIMEOUT_SECS ; 
 unsigned long PQI_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct pqi_general_admin_response*,scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pqi_ctrl_info *ctrl_info,
	struct pqi_general_admin_response *response)
{
	struct pqi_admin_queues *admin_queues;
	pqi_index_t oq_pi;
	pqi_index_t oq_ci;
	unsigned long timeout;

	admin_queues = &ctrl_info->admin_queues;
	oq_ci = admin_queues->oq_ci_copy;

	timeout = (PQI_ADMIN_REQUEST_TIMEOUT_SECS * PQI_HZ) + jiffies;

	while (1) {
		oq_pi = FUNC2(admin_queues->oq_pi);
		if (oq_pi != oq_ci)
			break;
		if (FUNC4(jiffies, timeout)) {
			FUNC0(&ctrl_info->pci_dev->dev,
				"timed out waiting for admin response\n");
			return -ETIMEDOUT;
		}
		if (!FUNC3(ctrl_info))
			return -ENXIO;
		FUNC5(1000, 2000);
	}

	FUNC1(response, admin_queues->oq_element_array +
		(oq_ci * PQI_ADMIN_OQ_ELEMENT_LENGTH), sizeof(*response));

	oq_ci = (oq_ci + 1) % PQI_ADMIN_OQ_NUM_ELEMENTS;
	admin_queues->oq_ci_copy = oq_ci;
	FUNC6(oq_ci, admin_queues->oq_ci);

	return 0;
}