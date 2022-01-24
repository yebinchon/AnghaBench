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
typedef  int /*<<< orphan*/  u8 ;
struct mpt3_diag_register {size_t buffer_type; int requested_buffer_size; int unique_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {int* diag_buffer_status; scalar_t__* diag_buffer; scalar_t__ is_driver_loading; scalar_t__ pci_error_recovery; scalar_t__ remove_host; scalar_t__ shost_recovery; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 size_t MPI2_DIAG_BUF_TYPE_TRACE ; 
 int MPT3_DIAG_BUFFER_IS_REGISTERED ; 
 int MPT3_DIAG_BUFFER_IS_RELEASED ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,struct mpt3_diag_register*) ; 
 struct Scsi_Host* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct MPT3SAS_ADAPTER*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt3_diag_register*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,size_t,int /*<<< orphan*/ *) ; 
 struct MPT3SAS_ADAPTER* FUNC5 (struct Scsi_Host*) ; 
 int FUNC6 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC9(struct device *cdev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC1(cdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC5(shost);
	char str[10] = "";
	struct mpt3_diag_register diag_register;
	u8 issue_reset = 0;

	/* don't allow post/release occurr while recovery is active */
	if (ioc->shost_recovery || ioc->remove_host ||
	    ioc->pci_error_recovery || ioc->is_driver_loading)
		return -EBUSY;

	if (FUNC6(buf, "%9s", str) != 1)
		return -EINVAL;

	if (!FUNC7(str, "post")) {
		/* exit out if host buffers are already posted */
		if ((ioc->diag_buffer[MPI2_DIAG_BUF_TYPE_TRACE]) &&
		    (ioc->diag_buffer_status[MPI2_DIAG_BUF_TYPE_TRACE] &
		    MPT3_DIAG_BUFFER_IS_REGISTERED) &&
		    ((ioc->diag_buffer_status[MPI2_DIAG_BUF_TYPE_TRACE] &
		    MPT3_DIAG_BUFFER_IS_RELEASED) == 0))
			goto out;
		FUNC3(&diag_register, 0, sizeof(struct mpt3_diag_register));
		FUNC2(ioc, "posting host trace buffers\n");
		diag_register.buffer_type = MPI2_DIAG_BUF_TYPE_TRACE;
		diag_register.requested_buffer_size = (1024 * 1024);
		diag_register.unique_id = 0x7075900;
		ioc->diag_buffer_status[MPI2_DIAG_BUF_TYPE_TRACE] = 0;
		FUNC0(ioc,  &diag_register);
	} else if (!FUNC7(str, "release")) {
		/* exit out if host buffers are already released */
		if (!ioc->diag_buffer[MPI2_DIAG_BUF_TYPE_TRACE])
			goto out;
		if ((ioc->diag_buffer_status[MPI2_DIAG_BUF_TYPE_TRACE] &
		    MPT3_DIAG_BUFFER_IS_REGISTERED) == 0)
			goto out;
		if ((ioc->diag_buffer_status[MPI2_DIAG_BUF_TYPE_TRACE] &
		    MPT3_DIAG_BUFFER_IS_RELEASED))
			goto out;
		FUNC2(ioc, "releasing host trace buffer\n");
		FUNC4(ioc, MPI2_DIAG_BUF_TYPE_TRACE,
		    &issue_reset);
	}

 out:
	return FUNC8(buf);
}