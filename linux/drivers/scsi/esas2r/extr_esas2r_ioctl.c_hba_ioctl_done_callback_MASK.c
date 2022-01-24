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
struct esas2r_request {int dummy; } ;
struct esas2r_adapter {int /*<<< orphan*/  index; } ;
struct atto_hba_get_adapter_info {int num_busses; int num_lunsper_targ; scalar_t__ num_targsper_bus; int /*<<< orphan*/  drvr_name; int /*<<< orphan*/  drvr_rev_ascii; int /*<<< orphan*/  drvr_rev_minor; int /*<<< orphan*/  drvr_rev_major; } ;
struct TYPE_2__ {struct atto_hba_get_adapter_info get_adap_info; } ;
struct atto_ioctl {scalar_t__ function; TYPE_1__ data; } ;

/* Variables and functions */
 scalar_t__ ATTO_FUNC_GET_ADAP_INFO ; 
 int /*<<< orphan*/  ESAS2R_DRVR_NAME ; 
 int /*<<< orphan*/  ESAS2R_MAJOR_REV ; 
 scalar_t__ ESAS2R_MAX_ID ; 
 int /*<<< orphan*/  ESAS2R_MINOR_REV ; 
 int /*<<< orphan*/  ESAS2R_VERSION_STR ; 
 scalar_t__ esas2r_buffered_ioctl ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct esas2r_adapter *a,
				    struct esas2r_request *rq, void *context)
{
	struct atto_ioctl *ioctl_hba =
		(struct atto_ioctl *)esas2r_buffered_ioctl;

	FUNC0("hba_ioctl_done_callback %d", a->index);

	if (ioctl_hba->function == ATTO_FUNC_GET_ADAP_INFO) {
		struct atto_hba_get_adapter_info *gai =
			&ioctl_hba->data.get_adap_info;

		FUNC0("ATTO_FUNC_GET_ADAP_INFO");

		gai->drvr_rev_major = ESAS2R_MAJOR_REV;
		gai->drvr_rev_minor = ESAS2R_MINOR_REV;

		FUNC1(gai->drvr_rev_ascii, ESAS2R_VERSION_STR);
		FUNC1(gai->drvr_name, ESAS2R_DRVR_NAME);

		gai->num_busses = 1;
		gai->num_targsper_bus = ESAS2R_MAX_ID + 1;
		gai->num_lunsper_targ = 1;
	}
}