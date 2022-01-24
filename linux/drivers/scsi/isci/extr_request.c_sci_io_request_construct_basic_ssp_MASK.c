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
struct sas_task {int /*<<< orphan*/  total_xfer_len; int /*<<< orphan*/  data_dir; } ;
struct isci_request {int /*<<< orphan*/  sm; int /*<<< orphan*/  protocol; } ;
typedef  enum sci_status { ____Placeholder_sci_status } sci_status ;

/* Variables and functions */
 int /*<<< orphan*/  SAS_PROTOCOL_SSP ; 
 int /*<<< orphan*/  SCI_REQ_CONSTRUCTED ; 
 int SCI_SUCCESS ; 
 struct sas_task* FUNC0 (struct isci_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isci_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct isci_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum sci_status FUNC4(struct isci_request *ireq)
{
	struct sas_task *task = FUNC0(ireq);

	ireq->protocol = SAS_PROTOCOL_SSP;

	FUNC3(ireq,
						  task->data_dir,
						  task->total_xfer_len);

	FUNC2(ireq);

	FUNC1(&ireq->sm, SCI_REQ_CONSTRUCTED);

	return SCI_SUCCESS;
}