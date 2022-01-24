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
typedef  int /*<<< orphan*/  u16 ;
struct scu_task_context {int dummy; } ;
struct isci_request {int /*<<< orphan*/  protocol; int /*<<< orphan*/  tc; int /*<<< orphan*/  flags; } ;
struct isci_remote_device {struct domain_device* domain_dev; } ;
struct isci_host {int dummy; } ;
struct domain_device {scalar_t__ dev_type; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;

/* Variables and functions */
 int /*<<< orphan*/  IREQ_TMF ; 
 scalar_t__ SAS_END_DEVICE ; 
 int /*<<< orphan*/  SAS_PROTOCOL_SSP ; 
 int /*<<< orphan*/  SAS_PROTOCOL_STP ; 
 int SCI_FAILURE_UNSUPPORTED_PROTOCOL ; 
 int SCI_SUCCESS ; 
 scalar_t__ FUNC0 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_host*,struct isci_remote_device*,struct isci_request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

enum sci_status FUNC4(struct isci_host *ihost,
					    struct isci_remote_device *idev,
					    u16 io_tag, struct isci_request *ireq)
{
	struct domain_device *dev = idev->domain_dev;
	enum sci_status status = SCI_SUCCESS;

	/* Build the common part of the request */
	FUNC2(ihost, idev, ireq);

	if (dev->dev_type == SAS_END_DEVICE || FUNC0(dev)) {
		FUNC3(IREQ_TMF, &ireq->flags);
		FUNC1(ireq->tc, 0, sizeof(struct scu_task_context));

		/* Set the protocol indicator. */
		if (FUNC0(dev))
			ireq->protocol = SAS_PROTOCOL_STP;
		else
			ireq->protocol = SAS_PROTOCOL_SSP;
	} else
		status = SCI_FAILURE_UNSUPPORTED_PROTOCOL;

	return status;
}