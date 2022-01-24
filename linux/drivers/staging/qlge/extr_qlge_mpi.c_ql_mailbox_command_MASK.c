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
struct ql_adapter {int /*<<< orphan*/  mpi_mutex; int /*<<< orphan*/  ndev; } ;
struct mbox_params {scalar_t__* mbox_in; int* mbox_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR ; 
 int CSR_CMD_CLR_R2PCI_INT ; 
 int EIO ; 
 int ETIMEDOUT ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  INTR_MASK ; 
 int INTR_MASK_PI ; 
 unsigned long MAILBOX_TIMEOUT ; 
 scalar_t__ MB_CMD_MAKE_SYS_ERR ; 
 int MB_CMD_STS_GOOD ; 
 int MB_CMD_STS_INTRMDT ; 
 int /*<<< orphan*/  drv ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ql_adapter*,struct mbox_params*) ; 
 int FUNC4 (struct ql_adapter*,struct mbox_params*) ; 
 int FUNC5 (struct ql_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ql_adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
	int status;
	unsigned long count;

	FUNC0(&qdev->mpi_mutex);

	/* Begin polled mode for MPI */
	FUNC6(qdev, INTR_MASK, (INTR_MASK_PI << 16));

	/* Load the mailbox registers and wake up MPI RISC. */
	status = FUNC3(qdev, mbcp);
	if (status)
		goto end;


	/* If we're generating a system error, then there's nothing
	 * to wait for.
	 */
	if (mbcp->mbox_in[0] == MB_CMD_MAKE_SYS_ERR)
		goto end;

	/* Wait for the command to complete. We loop
	 * here because some AEN might arrive while
	 * we're waiting for the mailbox command to
	 * complete. If more than 5 seconds expire we can
	 * assume something is wrong. */
	count = jiffies + HZ * MAILBOX_TIMEOUT;
	do {
		/* Wait for the interrupt to come in. */
		status = FUNC5(qdev);
		if (status)
			continue;

		/* Process the event.  If it's an AEN, it
		 * will be handled in-line or a worker
		 * will be spawned. If it's our completion
		 * we will catch it below.
		 */
		status = FUNC4(qdev, mbcp);
		if (status)
			goto end;

		/* It's either the completion for our mailbox
		 * command complete or an AEN.  If it's our
		 * completion then get out.
		 */
		if (((mbcp->mbox_out[0] & 0x0000f000) ==
					MB_CMD_STS_GOOD) ||
			((mbcp->mbox_out[0] & 0x0000f000) ==
					MB_CMD_STS_INTRMDT))
			goto done;
	} while (FUNC7(jiffies, count));

	FUNC2(qdev, drv, qdev->ndev,
		  "Timed out waiting for mailbox complete.\n");
	status = -ETIMEDOUT;
	goto end;

done:

	/* Now we can clear the interrupt condition
	 * and look at our status.
	 */
	FUNC6(qdev, CSR, CSR_CMD_CLR_R2PCI_INT);

	if (((mbcp->mbox_out[0] & 0x0000f000) !=
					MB_CMD_STS_GOOD) &&
		((mbcp->mbox_out[0] & 0x0000f000) !=
					MB_CMD_STS_INTRMDT)) {
		status = -EIO;
	}
end:
	/* End polled mode for MPI */
	FUNC6(qdev, INTR_MASK, (INTR_MASK_PI << 16) | INTR_MASK_PI);
	FUNC1(&qdev->mpi_mutex);
	return status;
}